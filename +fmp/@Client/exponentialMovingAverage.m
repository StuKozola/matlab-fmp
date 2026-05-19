function out = exponentialMovingAverage(obj, varargin)
%exponentialMovingAverage Exponential Moving Average API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/technical-indicators/ema", varargin{:});
end
