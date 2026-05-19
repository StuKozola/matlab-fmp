function out = mutualFundEtfDisclosureNameSearch(obj, varargin)
%mutualFundEtfDisclosureNameSearch Mutual Fund & ETF Disclosure Name Search API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/funds/disclosure-holders-search", varargin{:});
end
