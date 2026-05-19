function out = get5MinuteIntervalForexChart(obj, varargin)
%get5MinuteIntervalForexChart 5-Minute Interval Forex Chart API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/historical-chart/5min", varargin{:});
end
