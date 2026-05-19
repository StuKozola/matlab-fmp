function out = latest8KSecFilings(obj, varargin)
%latest8KSecFilings Latest 8-K SEC Filings API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/sec-filings-8k", varargin{:});
end
