function out = industryPerformanceSummary(obj, varargin)
%industryPerformanceSummary Industry Performance Summary API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/institutional-ownership/industry-summary", varargin{:});
end
