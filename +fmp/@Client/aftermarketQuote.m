function out = aftermarketQuote(obj, varargin)
%aftermarketQuote Aftermarket Quote API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/aftermarket-quote", varargin{:});
end
