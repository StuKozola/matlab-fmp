function out = get1MinuteIntervalCommoditiesChart(obj, varargin)
%get1MinuteIntervalCommoditiesChart 1-Minute Interval Commodities Chart API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/historical-chart/1min", varargin{:});
end
