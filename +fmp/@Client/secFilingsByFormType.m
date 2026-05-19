function out = secFilingsByFormType(obj, varargin)
%secFilingsByFormType SEC Filings By Form Type API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/sec-filings-search/form-type", varargin{:});
end
