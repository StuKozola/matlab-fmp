function out = holdersIndustryBreakdown(obj, varargin)
%holdersIndustryBreakdown Holders Industry Breakdown API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/institutional-ownership/holder-industry-breakdown", varargin{:});
end
