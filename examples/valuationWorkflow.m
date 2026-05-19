%% Valuation Workflow
% Estimate a simple valuation view using profile, quote, DCF, and metrics data.

client = fmp.Client;
symbol = "AAPL";

profile = client.profile(symbol=symbol);
quote = client.quote(symbol=symbol);
dcf = client.dcfValuation(symbol=symbol);
ratios = client.ratios(symbol=symbol, period="annual", limit=5);

disp(profile(:, ["symbol", "companyName", "sector", "industry"]))
disp(quote(:, ["symbol", "price", "marketCap"]))
disp(dcf)
disp(ratios(:, ["revenuePerShare", "netIncomePerShare", "freeCashFlowPerShare"]))
