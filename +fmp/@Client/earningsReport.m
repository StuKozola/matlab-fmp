function out = earningsReport(obj, varargin)
%earningsReport Earnings Report API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/earnings", varargin{:});
end
