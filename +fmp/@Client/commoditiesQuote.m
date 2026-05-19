function out = commoditiesQuote(obj, varargin)
%commoditiesQuote Commodities Quote API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/quote", varargin{:});
end
