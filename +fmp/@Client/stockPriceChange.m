function out = stockPriceChange(obj, varargin)
%stockPriceChange Stock Price Change API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/stock-price-change", varargin{:});
end
