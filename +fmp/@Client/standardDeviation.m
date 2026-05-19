function out = standardDeviation(obj, varargin)
%standardDeviation Standard Deviation API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/technical-indicators/standarddeviation", varargin{:});
end
