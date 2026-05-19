function out = historicalForexFullChart(obj, varargin)
%historicalForexFullChart Historical Forex Full Chart API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/historical-price-eod/full", varargin{:});
end
