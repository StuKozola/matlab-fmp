function out = secFilingsBySymbol(obj, varargin)
%secFilingsBySymbol SEC Filings By Symbol API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/sec-filings-search/symbol", varargin{:});
end
