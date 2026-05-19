function out = tripleExponentialMovingAverage(obj, varargin)
%tripleExponentialMovingAverage Triple Exponential Moving Average API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/technical-indicators/tema", varargin{:});
end
