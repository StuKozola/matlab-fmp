function out = averageDirectionalIndex(obj, varargin)
%averageDirectionalIndex Average Directional Index API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/technical-indicators/adx", varargin{:});
end
