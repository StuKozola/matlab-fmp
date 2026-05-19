function out = get15MinIntervalStockChart(obj, varargin)
%get15MinIntervalStockChart 15 Min Interval Stock Chart API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/historical-chart/15min", varargin{:});
end
