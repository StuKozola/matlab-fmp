function out = asReportedCashflowStatements(obj, varargin)
%asReportedCashflowStatements As Reported Cashflow Statements API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/cash-flow-statement-as-reported", varargin{:});
end
