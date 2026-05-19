function out = get5MinuteIntervalCommoditiesChart(obj, varargin)
%get5MinuteIntervalCommoditiesChart 5-Minute Interval Commodities Chart API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/historical-chart/5min", varargin{:});
end
