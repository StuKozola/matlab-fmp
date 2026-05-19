function out = weightedMovingAverage(obj, varargin)
%weightedMovingAverage Weighted Moving Average API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/technical-indicators/wma", varargin{:});
end
