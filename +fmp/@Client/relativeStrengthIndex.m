function out = relativeStrengthIndex(obj, varargin)
%relativeStrengthIndex Relative Strength Index API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/technical-indicators/rsi", varargin{:});
end
