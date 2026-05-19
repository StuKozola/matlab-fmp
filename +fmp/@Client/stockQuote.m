function out = stockQuote(obj, varargin)
%stockQuote Stock Quote API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/quote", varargin{:});
end
