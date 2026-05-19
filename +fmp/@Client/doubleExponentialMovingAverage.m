function out = doubleExponentialMovingAverage(obj, varargin)
%doubleExponentialMovingAverage Double Exponential Moving Average API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/technical-indicators/dema", varargin{:});
end
