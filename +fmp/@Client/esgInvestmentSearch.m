function out = esgInvestmentSearch(obj, varargin)
%esgInvestmentSearch ESG Investment Search API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/esg-disclosures", varargin{:});
end
