function out = historicalForexLightChart(obj, varargin)
%historicalForexLightChart Historical Forex Light Chart API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/historical-price-eod/light", varargin{:});
end
