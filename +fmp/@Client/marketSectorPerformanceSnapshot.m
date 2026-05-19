function out = marketSectorPerformanceSnapshot(obj, varargin)
%marketSectorPerformanceSnapshot Market Sector Performance Snapshot API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/sector-performance-snapshot", varargin{:});
end
