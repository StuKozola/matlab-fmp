function out = allCryptocurrenciesQuotes(obj, varargin)
%allCryptocurrenciesQuotes All Cryptocurrencies Quotes API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/batch-crypto-quotes", varargin{:});
end
