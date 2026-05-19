function out = cotReportList(obj, varargin)
%cotReportList COT Report List API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/commitment-of-traders-list", varargin{:});
end
