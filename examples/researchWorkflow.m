%% Research Workflow
% Use higher-level helpers for a compact company research pass.

client = fmp.Client;
symbol = "AAPL";

peers = client.peerComparison(symbol, Top=5);
summary = client.statementSummary(symbol, Limit=5);
screen = client.factorScreen( ...
    Sector="Technology", ...
    MinMarketCap=1e11, ...
    Limit=10);

disp(peers)
disp(summary(:, ["revenue", "netIncome", "RevenueGrowth", "NetMargin", "FreeCashFlowMargin"]))
disp(screen(:, ["FactorRank", "symbol", "companyName", "marketCap"]))
