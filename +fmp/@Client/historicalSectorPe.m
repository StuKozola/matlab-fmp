function out = historicalSectorPe(obj, varargin)
%historicalSectorPe Historical Sector PE API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/historical-sector-pe", varargin{:});
end
