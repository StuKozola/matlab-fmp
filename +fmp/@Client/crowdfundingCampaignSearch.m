function out = crowdfundingCampaignSearch(obj, varargin)
%crowdfundingCampaignSearch Crowdfunding Campaign Search API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/crowdfunding-offerings-search", varargin{:});
end
