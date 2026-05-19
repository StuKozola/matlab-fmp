function out = get1MinuteIntervalForexChart(obj, varargin)
%get1MinuteIntervalForexChart 1-Minute Interval Forex Chart API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/historical-chart/1min", varargin{:});
end
