function out = sectorPeSnapshot(obj, varargin)
%sectorPeSnapshot Sector PE Snapshot API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/sector-pe-snapshot", varargin{:});
end
