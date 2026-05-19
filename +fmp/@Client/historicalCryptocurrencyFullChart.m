function out = historicalCryptocurrencyFullChart(obj, varargin)
%historicalCryptocurrencyFullChart Historical Cryptocurrency Full Chart API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/historical-price-eod/full", varargin{:});
end
