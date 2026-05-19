function out = acquisitionOwnership(obj, varargin)
%acquisitionOwnership Acquisition Ownership API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/acquisition-of-beneficial-ownership", varargin{:});
end
