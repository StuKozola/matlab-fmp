function out = fullCryptocurrencyQuote(obj, varargin)
%fullCryptocurrencyQuote Full Cryptocurrency Quote API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/quote", varargin{:});
end
