function out = financialReportsForm10KJson(obj, varargin)
%financialReportsForm10KJson Financial Reports Form 10-K JSON API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/financial-reports-json", varargin{:});
end
