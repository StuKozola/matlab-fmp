function out = asReportedBalanceStatements(obj, varargin)
%asReportedBalanceStatements As Reported Balance Statements API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/balance-sheet-statement-as-reported", varargin{:});
end
