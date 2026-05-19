function out = exchangeStockQuotes(obj, varargin)
%exchangeStockQuotes Exchange Stock Quotes API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/batch-exchange-quote", varargin{:});
end
