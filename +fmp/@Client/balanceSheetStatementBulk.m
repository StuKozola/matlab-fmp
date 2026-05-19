function out = balanceSheetStatementBulk(obj, varargin)
%balanceSheetStatementBulk Balance Sheet Statement Bulk API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/balance-sheet-statement-bulk", varargin{:});
end
