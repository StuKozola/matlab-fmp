function companies = factorScreen(obj, options)
%factorScreen Screen companies and rank them by a selected factor.

arguments
    obj (1,1) fmp.Client
    options.Sector (1,1) string = ""
    options.Industry (1,1) string = ""
    options.Country (1,1) string = ""
    options.Exchange (1,1) string = ""
    options.MinMarketCap (1,1) double = NaN
    options.MaxMarketCap (1,1) double = NaN
    options.MinPrice (1,1) double = NaN
    options.MaxPrice (1,1) double = NaN
    options.Limit (1,1) double {mustBeInteger, mustBePositive} = 100
    options.MaxPages (1,1) double {mustBeInteger, mustBePositive} = 1
    options.SortBy (1,1) string = "marketCap"
    options.SortDirection (1,1) string = "descend"
end

args = screenArguments(options);
if options.MaxPages > 1
    companies = obj.allPages( ...
        "stockScreener", args{:}, PageSize=options.Limit, MaxPages=options.MaxPages);
else
    companies = obj.stockScreener(args{:}, limit=options.Limit);
end

companies = fmp.internal.sortTable(companies, options.SortBy, options.SortDirection);
companies.FactorRank = (1:height(companies))';
companies = movevars(companies, "FactorRank", Before=1);
end

function args = screenArguments(options)
args = {};
args = addTextArgument(args, "sector", options.Sector);
args = addTextArgument(args, "industry", options.Industry);
args = addTextArgument(args, "country", options.Country);
args = addTextArgument(args, "exchange", options.Exchange);
args = addNumericArgument(args, "marketCapMoreThan", options.MinMarketCap);
args = addNumericArgument(args, "marketCapLowerThan", options.MaxMarketCap);
args = addNumericArgument(args, "priceMoreThan", options.MinPrice);
args = addNumericArgument(args, "priceLowerThan", options.MaxPrice);
end

function args = addTextArgument(args, name, value)
if strlength(value) > 0
    args(end + 1:end + 2) = {char(name), value};
end
end

function args = addNumericArgument(args, name, value)
if ~isnan(value)
    args(end + 1:end + 2) = {char(name), value};
end
end
