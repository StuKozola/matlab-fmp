function out = get1HourIntervalIndexPrice(obj, varargin)
%get1HourIntervalIndexPrice 1-Hour Interval Index Price API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/historical-chart/1hour", varargin{:});
end
