function out = secFilingsByName(obj, varargin)
%secFilingsByName SEC Filings By Name API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/sec-filings-company-search/name", varargin{:});
end
