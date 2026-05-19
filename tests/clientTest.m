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
            testCase.verifyTrue(istable(result));
        end
    end
end
