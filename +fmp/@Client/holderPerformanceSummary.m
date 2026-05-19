function out = holderPerformanceSummary(obj, varargin)
%holderPerformanceSummary Holder Performance Summary API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/institutional-ownership/holder-performance-summary", varargin{:});
end
