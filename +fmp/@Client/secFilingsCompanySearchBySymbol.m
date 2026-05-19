function out = secFilingsCompanySearchBySymbol(obj, varargin)
%secFilingsCompanySearchBySymbol SEC Filings Company Search By Symbol API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/sec-filings-company-search/symbol", varargin{:});
end
