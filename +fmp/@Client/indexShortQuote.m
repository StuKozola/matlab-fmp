function out = indexShortQuote(obj, varargin)
%indexShortQuote Index Short Quote API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/quote-short", varargin{:});
end
