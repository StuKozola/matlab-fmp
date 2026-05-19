function out = crowdfundingByCik(obj, varargin)
%crowdfundingByCik Crowdfunding By CIK API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/crowdfunding-offerings", varargin{:});
end
