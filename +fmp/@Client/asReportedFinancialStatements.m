function out = asReportedFinancialStatements(obj, varargin)
%asReportedFinancialStatements As Reported Financial Statements API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/financial-statement-full-as-reported", varargin{:});
end
