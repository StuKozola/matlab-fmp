function out = industryPeSnapshot(obj, varargin)
%industryPeSnapshot Industry PE Snapshot API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/industry-pe-snapshot", varargin{:});
end
