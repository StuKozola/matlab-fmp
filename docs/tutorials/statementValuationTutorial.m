%[text] # Statement and Valuation Snapshot
%[text] Combine profile, financial statements, key metrics, and DCF endpoints into a reusable company snapshot.
%[text] - identify the company
%[text] - compare statement line items
%[text] - inspect valuation metrics \
client = fmp.Client(MaxRetries=3, RetryDelay=seconds(1));
symbol = "AAPL";
%%
%[text] ## Company Profile
%[text] Start with descriptive company metadata.
profile = client.profile(symbol=symbol);
profile(:, ["symbol", "companyName", "sector", "industry"])
%%
%[text] ## Statement Data
%[text] Retrieve recent annual statement data and compare core line items.
income = client.incomeStatement(symbol=symbol, period="annual", limit=5);
cashFlow = client.cashFlowStatement(symbol=symbol, period="annual", limit=5);
statementView = synchronize(income(:, ["revenue", "netIncome"]), cashFlow(:, ["operatingCashFlow", "freeCashFlow"]));
statementView
%%
%[text] ## Per-Share Metrics
%[text] Plot a compact view of revenue, earnings, and free cash flow per share.
ratios = client.ratios(symbol=symbol, period="annual", limit=5);
plot(ratios.Time, ratios.revenuePerShare, ratios.Time, ratios.netIncomePerShare, ratios.Time, ratios.freeCashFlowPerShare)
title(symbol + " per-share metrics")
legend(["Revenue", "Net income", "Free cash flow"], Location="best")
grid on
%%
%[text] ## DCF Snapshot
%[text] The DCF endpoint gives a quick external reference point for the current quote.
dcf = client.dcfValuation(symbol=symbol);
dcf
%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"inline"}
%---
