function out = stockQuoteShort(obj, varargin)
%stockQuoteShort Stock Quote Short API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/quote-short", varargin{:});
end
