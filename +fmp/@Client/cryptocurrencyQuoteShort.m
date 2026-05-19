function out = cryptocurrencyQuoteShort(obj, varargin)
%cryptocurrencyQuoteShort Cryptocurrency Quote Short API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/quote-short", varargin{:});
end
