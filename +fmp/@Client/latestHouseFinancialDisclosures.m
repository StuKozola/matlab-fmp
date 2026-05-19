function out = latestHouseFinancialDisclosures(obj, varargin)
%latestHouseFinancialDisclosures Latest House Financial Disclosures API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/house-latest", varargin{:});
end
