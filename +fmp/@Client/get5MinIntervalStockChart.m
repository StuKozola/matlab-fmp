function out = get5MinIntervalStockChart(obj, varargin)
%get5MinIntervalStockChart 5 Min Interval Stock Chart API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/historical-chart/5min", varargin{:});
end
