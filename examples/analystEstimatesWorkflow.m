%% Analyst Estimates Workflow
% Retrieve analyst estimates and price target summary for a symbol.

client = fmp.Client;
symbol = "NVDA";

estimates = client.financialEstimates(symbol=symbol, period="annual");
targets = client.priceTargetSummary(symbol=symbol);

disp(estimates)
disp(targets)
