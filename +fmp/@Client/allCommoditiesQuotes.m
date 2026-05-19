function out = allCommoditiesQuotes(obj, varargin)
%allCommoditiesQuotes All Commodities Quotes API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/batch-commodity-quotes", varargin{:});
end
