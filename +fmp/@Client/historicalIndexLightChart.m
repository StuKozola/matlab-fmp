function out = historicalIndexLightChart(obj, varargin)
%historicalIndexLightChart Historical Index Light Chart API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/historical-price-eod/light", varargin{:});
end
