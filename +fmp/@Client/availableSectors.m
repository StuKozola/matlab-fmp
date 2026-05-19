function out = availableSectors(obj, varargin)
%availableSectors Available Sectors API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/available-sectors", varargin{:});
end
