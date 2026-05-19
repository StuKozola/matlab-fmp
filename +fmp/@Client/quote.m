function out = quote(obj, varargin)
%quote Get a stock quote.

out = obj.endpoint("/stable/quote", varargin{:});
end
