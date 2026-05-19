function out = get30MinIntervalStockChart(obj, varargin)
%get30MinIntervalStockChart 30 Min Interval Stock Chart API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/historical-chart/30min", varargin{:});
end
