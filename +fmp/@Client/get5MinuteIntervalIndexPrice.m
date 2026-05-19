function out = get5MinuteIntervalIndexPrice(obj, varargin)
%get5MinuteIntervalIndexPrice 5-Minute Interval Index Price API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/historical-chart/5min", varargin{:});
end
