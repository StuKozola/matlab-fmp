function out = historicalCryptocurrencyLightChart(obj, varargin)
%historicalCryptocurrencyLightChart Historical Cryptocurrency Light Chart API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/historical-price-eod/light", varargin{:});
end
