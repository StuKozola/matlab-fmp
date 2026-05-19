%% Financial Statements Workflow
% Compare recent financial statement data for one company.

client = fmp.Client;
symbol = "AAPL";

income = client.incomeStatement(symbol=symbol, period="annual", limit=5);
balanceSheet = client.balanceSheetStatement(symbol=symbol, period="annual", limit=5);
cashFlow = client.cashFlowStatement(symbol=symbol, period="annual", limit=5);

disp(income(:, ["revenue", "netIncome"]))
disp(balanceSheet(:, ["totalAssets", "totalLiabilities"]))
disp(cashFlow(:, ["operatingCashFlow", "freeCashFlow"]))
