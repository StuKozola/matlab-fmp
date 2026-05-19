function out = latestSecFilings(obj, varargin)
%latestSecFilings Latest SEC Filings API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/sec-filings-financials", varargin{:});
end
