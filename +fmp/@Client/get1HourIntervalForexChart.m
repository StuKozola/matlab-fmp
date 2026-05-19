function out = get1HourIntervalForexChart(obj, varargin)
%get1HourIntervalForexChart 1-Hour Interval Forex Chart API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/historical-chart/1hour", varargin{:});
end
