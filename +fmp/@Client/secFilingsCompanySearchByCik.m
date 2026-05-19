function out = secFilingsCompanySearchByCik(obj, varargin)
%secFilingsCompanySearchByCik SEC Filings Company Search By CIK API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/sec-filings-company-search/cik", varargin{:});
end
