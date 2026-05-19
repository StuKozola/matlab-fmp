function out = cotReport(obj, varargin)
%cotReport COT Report API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/commitment-of-traders-report", varargin{:});
end
