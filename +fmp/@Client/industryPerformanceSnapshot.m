function out = industryPerformanceSnapshot(obj, varargin)
%industryPerformanceSnapshot Industry Performance Snapshot API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/industry-performance-snapshot", varargin{:});
end
