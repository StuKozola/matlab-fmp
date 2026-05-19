function out = get1HourIntervalCommoditiesChart(obj, varargin)
%get1HourIntervalCommoditiesChart 1-Hour Interval Commodities Chart API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/historical-chart/1hour", varargin{:});
end
