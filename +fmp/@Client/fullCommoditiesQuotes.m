function out = fullCommoditiesQuotes(obj, varargin)
%fullCommoditiesQuotes Full Commodities Quotes API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/batch-commodity-quotes", varargin{:});
end
