function out = get1MinIntervalStockChart(obj, varargin)
%get1MinIntervalStockChart 1 Min Interval Stock Chart API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/historical-chart/1min", varargin{:});
end
