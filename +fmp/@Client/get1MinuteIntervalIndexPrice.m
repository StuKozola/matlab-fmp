function out = get1MinuteIntervalIndexPrice(obj, varargin)
%get1MinuteIntervalIndexPrice 1-Minute Interval Index Price API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/historical-chart/1min", varargin{:});
end
