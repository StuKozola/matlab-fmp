function out = get1HourIntervalStockChart(obj, varargin)
%get1HourIntervalStockChart 1 Hour Interval Stock Chart API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/historical-chart/1hour", varargin{:});
end
