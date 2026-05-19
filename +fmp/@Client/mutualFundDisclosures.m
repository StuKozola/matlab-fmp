function out = mutualFundDisclosures(obj, varargin)
%mutualFundDisclosures Mutual Fund Disclosures API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/funds/disclosure", varargin{:});
end
