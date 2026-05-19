function out = fullCryptocurrencyQuotes(obj, varargin)
%fullCryptocurrencyQuotes Full Cryptocurrency Quotes API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/batch-crypto-quotes", varargin{:});
end
