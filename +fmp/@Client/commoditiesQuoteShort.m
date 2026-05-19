function out = commoditiesQuoteShort(obj, varargin)
%commoditiesQuoteShort Commodities Quote Short API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/quote-short", varargin{:});
end
