classdef liveClientTest < matlab.unittest.TestCase
    %liveClientTest Optional live tests for the FMP API.

    methods (Test, TestTags = {'Live'})
        function liveQuoteReturnsTable(testCase)
            testCase.assumeTrue(strlength(fmp.internal.resolveApiKey("")) > 0);
            client = fmp.Client;

            result = client.quote(symbol="AAPL");

            testCase.verifyTrue(istable(result) || istimetable(result));
            testCase.verifyGreaterThanOrEqual(height(result), 1);
        end

        function liveHistoricalPricesReturnTimetable(testCase)
            testCase.assumeTrue(strlength(fmp.internal.resolveApiKey("")) > 0);
            client = fmp.Client;

            result = client.historicalPrices( ...
                symbol="AAPL", ...
                from=datetime(2024, 1, 1), ...
                to=datetime(2024, 1, 31));

            testCase.verifyTrue(istimetable(result));
            testCase.verifyGreaterThanOrEqual(height(result), 1);
        end

        function liveIncomeStatementReturnsRows(testCase)
            testCase.assumeTrue(strlength(fmp.internal.resolveApiKey("")) > 0);
            client = fmp.Client;

            result = client.incomeStatement(symbol="AAPL", period="annual", limit=1);

            testCase.verifyTrue(istable(result) || istimetable(result));
            testCase.verifyGreaterThanOrEqual(height(result), 1);
        end

        function liveScreenerReturnsRows(testCase)
            testCase.assumeTrue(strlength(fmp.internal.resolveApiKey("")) > 0);
            client = fmp.Client;

            result = client.stockScreener(sector="Technology", limit=1);

            testCase.verifyTrue(istable(result) || istimetable(result));
            testCase.verifyGreaterThanOrEqual(height(result), 1);
        end
    end
end
