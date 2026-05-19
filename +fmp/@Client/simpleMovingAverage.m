function out = simpleMovingAverage(obj, varargin)
%simpleMovingAverage Simple Moving Average API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/technical-indicators/sma", varargin{:});
end
