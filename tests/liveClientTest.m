classdef liveClientTest < matlab.unittest.TestCase
    %liveClientTest Optional live tests for the FMP API.

    methods (Test, TestTags = {'Live'})
        function liveQuoteReturnsTable(testCase)
            testCase.assumeTrue(strlength(fmp.internal.resolveApiKey("")) > 0);
            client = fmp.Client;

            result = client.quote(symbol="AAPL");

            testCase.verifyTrue(istable(result) || istimetable(result));
        end
    end
end
