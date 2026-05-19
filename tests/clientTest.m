classdef clientTest < matlab.unittest.TestCase
    %clientTest Unit tests for fmp.Client.

    methods (Test)
        function requestUsesHeaderApiKey(testCase)
            recorder = RequestRecorder(struct(symbol="AAPL", price=123.45));
            client = fmp.Client(ApiKey="test-key", RequestFunction=@recorder.request);

            result = client.endpoint("/stable/quote", symbol="AAPL");

            testCase.verifyTrue(istable(result));
            testCase.verifyEqual(string(result.symbol), "AAPL");
            testCase.verifyEqual(recorder.LastUrl, "https://financialmodelingprep.com/stable/quote");
            testCase.verifyEqual(recorder.LastHeaders, ["apikey", "test-key"]);
        end

        function requestCanUseQueryApiKey(testCase)
            recorder = RequestRecorder(struct(symbol="MSFT", price=410));
            client = fmp.Client(ApiKey="query-key", UseQueryApiKey=true, RequestFunction=@recorder.request);

            client.endpoint("/stable/quote", symbol="MSFT");

            testCase.verifyEmpty(recorder.LastHeaders);
            testCase.verifyEqual(string({recorder.LastParams.Name}), ["symbol", "apikey"]);
            testCase.verifyEqual(string(recorder.LastParams(2).Value), "query-key");
        end

        function autoOutputConvertsDatesToTimetable(testCase)
            payload = struct( ...
                date={"2024-01-02"; "2024-01-03"}, ...
                close={185.64; 184.25});
            recorder = RequestRecorder(payload);
            client = fmp.Client(ApiKey="test-key", RequestFunction=@recorder.request);

            result = client.endpoint("/stable/historical-price-eod/full", symbol="AAPL");

            testCase.verifyTrue(istimetable(result));
            testCase.verifyEqual(result.close(1), 185.64, AbsTol=1e-12);
            testCase.verifyEqual(result.Properties.VariableDescriptions, {'close'});
        end

        function rawOutputReturnsPayload(testCase)
            payload = struct(symbol="AAPL", price=123.45);
            recorder = RequestRecorder(payload);
            client = fmp.Client(ApiKey="test-key", RequestFunction=@recorder.request);

            result = client.quote(symbol="AAPL", OutputFormat="raw");

            testCase.verifyEqual(result, payload);
        end

        function catalogContainsGeneratedEndpoints(testCase)
            catalog = fmp.endpointCatalog;
            recorder = RequestRecorder(struct(symbol="AAPL", price=123.45));
            client = fmp.Client(ApiKey="test-key", RequestFunction=@recorder.request);

            result = client.quote(symbol="AAPL");

            testCase.verifyGreaterThanOrEqual(height(catalog), 250);
            testCase.verifyTrue(any(catalog.Slug == "quote"));
            testCase.verifyTrue(any(catalog.Category == "Company Search"));
            testCase.verifyTrue(any(catalog.HasPagination));
            testCase.verifyTrue(any(catalog.DateFieldHint == "date"));
            quoteRow = catalog(catalog.Slug == "quote", :);
            testCase.verifyEqual(string(quoteRow.RequiredParameters{1}), "symbol");
            testCase.verifyTrue(istable(result));
        end

        function missingRequiredParameterErrors(testCase)
            recorder = RequestRecorder(struct(symbol="AAPL", price=123.45));
            client = fmp.Client(ApiKey="test-key", RequestFunction=@recorder.request);

            testCase.verifyError(@() client.quote(), "fmp:MissingRequiredParameter");
        end

        function strictValidationRejectsUnknownParameter(testCase)
            recorder = RequestRecorder(struct(symbol="AAPL", price=123.45));
            client = fmp.Client( ...
                ApiKey="test-key", ...
                ParameterValidation="strict", ...
                RequestFunction=@recorder.request);

            testCase.verifyError( ...
                @() client.quote(symbol="AAPL", extraParameter=1), ...
                "fmp:UnknownParameter");
        end

        function allPagesCombinesPaginatedResponses(testCase)
            firstPage = struct( ...
                "symbol", {"AAPL"; "MSFT"}, ...
                "marketCap", {1; 2});
            secondPage = struct( ...
                "symbol", {"NVDA"}, ...
                "marketCap", {3});
            emptyPage = struct("symbol", {}, "marketCap", {});
            recorder = SequenceRequestRecorder({firstPage, secondPage, emptyPage});
            client = fmp.Client(ApiKey="test-key", RequestFunction=@recorder.request);

            result = client.allPages( ...
                "stockScreener", ...
                marketCapMoreThan=1000, ...
                PageSize=2, ...
                MaxPages=3);

            testCase.verifyTrue(istable(result));
            testCase.verifyEqual(height(result), 3);
            testCase.verifyEqual(string(result.symbol), ["AAPL"; "MSFT"; "NVDA"]);
            testCase.verifyEqual(recorder.CallCount, 3);
            testCase.verifyEqual(string({recorder.ParamsHistory{1}.Name}), ...
                ["marketCapMoreThan", "page", "limit"]);
            testCase.verifyEqual(recorder.ParamsHistory{1}(2).Value, 0);
            testCase.verifyEqual(recorder.ParamsHistory{2}(2).Value, 1);
        end

        function retriableErrorsAreRetried(testCase)
            transientError = MException("fmp:RateLimit", "Too many requests.");
            recorder = SequenceRequestRecorder({ ...
                transientError, ...
                struct(symbol="AAPL", price=123.45)});
            client = fmp.Client( ...
                ApiKey="test-key", ...
                MaxRetries=1, ...
                RetryDelay=seconds(0), ...
                RequestFunction=@recorder.request);

            result = client.quote(symbol="AAPL");

            testCase.verifyTrue(istable(result));
            testCase.verifyEqual(recorder.CallCount, 2);
        end

        function endpointInfoReturnsParameterMetadata(testCase)
            client = fmp.Client(ApiKey="test-key");

            info = client.endpointInfo("quote");

            testCase.verifyEqual(info.Slug, "quote");
            testCase.verifyTrue(istable(info.ParameterTable));
            testCase.verifyEqual(info.ParameterTable.Name, "symbol");
            testCase.verifyTrue(info.ParameterTable.Required);
        end

        function peerComparisonRanksPeers(testCase)
            payload = struct( ...
                "symbol", {"MSFT"; "NVDA"; "GOOGL"}, ...
                "companyName", {"Microsoft"; "NVIDIA"; "Alphabet"}, ...
                "price", {400; 900; 150}, ...
                "mktCap", {3; 5; 2});
            recorder = RequestRecorder(payload);
            client = fmp.Client(ApiKey="test-key", RequestFunction=@recorder.request);

            result = client.peerComparison("AAPL", Top=2);

            testCase.verifyEqual(result.PeerRank, [1; 2]);
            testCase.verifyEqual(string(result.symbol), ["NVDA"; "MSFT"]);
            testCase.verifyEqual(recorder.LastUrl, "https://financialmodelingprep.com/stable/stock-peers");
        end

        function statementSummaryComputesDerivedMetrics(testCase)
            income = struct( ...
                date={"2023-12-31"; "2024-12-31"}, ...
                revenue={100; 125}, ...
                netIncome={10; 15});
            balance = struct( ...
                date={"2023-12-31"; "2024-12-31"}, ...
                totalAssets={200; 250}, ...
                totalLiabilities={80; 100});
            cashFlow = struct( ...
                date={"2023-12-31"; "2024-12-31"}, ...
                operatingCashFlow={20; 30}, ...
                freeCashFlow={12; 20});
            recorder = SequenceRequestRecorder({income, balance, cashFlow});
            client = fmp.Client(ApiKey="test-key", RequestFunction=@recorder.request);

            result = client.statementSummary("AAPL", Limit=2);

            testCase.verifyTrue(istimetable(result));
            testCase.verifyEqual(result.RevenueGrowth(2), 0.25, AbsTol=1e-12);
            testCase.verifyEqual(result.NetMargin(2), 0.12, AbsTol=1e-12);
            testCase.verifyEqual(result.FreeCashFlowMargin(2), 0.16, AbsTol=1e-12);
            testCase.verifyEqual(result.DebtToAssets(2), 0.4, AbsTol=1e-12);
        end

        function factorScreenRanksCompanies(testCase)
            payload = struct( ...
                "symbol", {"AAPL"; "MSFT"; "NVDA"}, ...
                "companyName", {"Apple"; "Microsoft"; "NVIDIA"}, ...
                "marketCap", {4; 3; 5}, ...
                "sector", {"Technology"; "Technology"; "Technology"});
            recorder = RequestRecorder(payload);
            client = fmp.Client(ApiKey="test-key", RequestFunction=@recorder.request);

            result = client.factorScreen(Sector="Technology", MinMarketCap=1);

            testCase.verifyEqual(result.FactorRank, [1; 2; 3]);
            testCase.verifyEqual(string(result.symbol), ["NVDA"; "AAPL"; "MSFT"]);
            testCase.verifyEqual(string({recorder.LastParams.Name}), ...
                ["sector", "marketCapMoreThan", "limit"]);
        end
    end
end
