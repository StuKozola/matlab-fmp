function out = secFilingsByCik(obj, varargin)
%secFilingsByCik SEC Filings By CIK API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/sec-filings-search/cik", varargin{:});
end
