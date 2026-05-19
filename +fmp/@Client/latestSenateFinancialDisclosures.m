function out = latestSenateFinancialDisclosures(obj, varargin)
%latestSenateFinancialDisclosures Latest Senate Financial Disclosures API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/senate-latest", varargin{:});
end
