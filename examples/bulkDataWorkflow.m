%% Bulk Data Workflow
% Retrieve bulk ratio data for broad cross-sectional analysis.

client = fmp.Client;

ratios = client.ratiosTtmBulk;
selected = ratios(:, ["symbol", "priceToEarningsRatioTTM", "debtEquityRatioTTM"]);

disp(head(selected))
