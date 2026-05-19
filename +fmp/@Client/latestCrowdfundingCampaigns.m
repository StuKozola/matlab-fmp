function out = latestCrowdfundingCampaigns(obj, varargin)
%latestCrowdfundingCampaigns Latest Crowdfunding Campaigns API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/crowdfunding-offerings-latest", varargin{:});
end
