function out = get4HourIntervalStockChart(obj, varargin)
%get4HourIntervalStockChart 4 Hour Interval Stock Chart API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/historical-chart/4hour", varargin{:});
end
