function summary = statementSummary(obj, symbol, options)
%statementSummary Combine statement data and compute common ratios.

arguments
    obj (1,1) fmp.Client
    symbol (1,1) string
    options.Period (1,1) string = "annual"
    options.Limit (1,1) double {mustBeInteger, mustBePositive} = 5
end

income = obj.incomeStatement( ...
    symbol=symbol, period=options.Period, limit=options.Limit);
balance = obj.balanceSheetStatement( ...
    symbol=symbol, period=options.Period, limit=options.Limit);
cashFlow = obj.cashFlowStatement( ...
    symbol=symbol, period=options.Period, limit=options.Limit);

income = selectVariables(income, ["revenue", "netIncome"]);
balance = selectVariables(balance, ["totalAssets", "totalLiabilities"]);
cashFlow = selectVariables(cashFlow, ["operatingCashFlow", "freeCashFlow"]);

summary = synchronize(sortrows(income), sortrows(balance), sortrows(cashFlow));
summary = sortrows(summary);
summary = addDerivedMetrics(summary);
end

function tbl = selectVariables(tbl, names)
names = names(ismember(names, string(tbl.Properties.VariableNames)));
tbl = tbl(:, names);
end

function tbl = addDerivedMetrics(tbl)
names = string(tbl.Properties.VariableNames);

if all(ismember(["revenue", "netIncome"], names))
    tbl.NetMargin = tbl.netIncome ./ tbl.revenue;
    tbl.RevenueGrowth = [NaN; diff(tbl.revenue) ./ tbl.revenue(1:end-1)];
end

if all(ismember(["revenue", "freeCashFlow"], names))
    tbl.FreeCashFlowMargin = tbl.freeCashFlow ./ tbl.revenue;
end

if all(ismember(["totalAssets", "totalLiabilities"], names))
    tbl.DebtToAssets = tbl.totalLiabilities ./ tbl.totalAssets;
end
end
