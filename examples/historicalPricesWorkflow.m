%% Historical Prices Workflow
% Retrieve historical prices as a timetable and compute daily returns.

client = fmp.Client;
prices = client.historicalPrices( ...
    symbol="MSFT", ...
    from=datetime(2024, 1, 1), ...
    to=datetime("today"));

prices.Return = [NaN; diff(prices.close) ./ prices.close(1:end-1)];
disp(head(prices(:, ["close", "volume", "Return"])))
