%% Get Started with matlab-fmp
% This example assumes FMP_API_KEY is set or fmp.setApiKey has been run.

client = fmp.Client;

quote = client.quote(symbol="AAPL");
disp(quote)

prices = client.historicalPrices(symbol="AAPL", from=datetime(2024, 1, 1));
disp(head(prices))

income = client.incomeStatement(symbol="AAPL", period="annual", limit=5);
disp(income)
