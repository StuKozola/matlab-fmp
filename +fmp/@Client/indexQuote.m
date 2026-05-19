function out = indexQuote(obj, varargin)
%indexQuote Index Quote API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/quote", varargin{:});
end
