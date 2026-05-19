function out = asReportedIncomeStatements(obj, varargin)
%asReportedIncomeStatements As Reported Income Statements API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/income-statement-as-reported", varargin{:});
end
