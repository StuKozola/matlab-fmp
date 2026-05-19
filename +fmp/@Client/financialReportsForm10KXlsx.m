function out = financialReportsForm10KXlsx(obj, varargin)
%financialReportsForm10KXlsx Financial Reports Form 10-K XLSX API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/financial-reports-xlsx", varargin{:});
end
