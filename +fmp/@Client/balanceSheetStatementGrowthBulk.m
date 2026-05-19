function out = balanceSheetStatementGrowthBulk(obj, varargin)
%balanceSheetStatementGrowthBulk Balance Sheet Statement Growth Bulk API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/balance-sheet-statement-growth-bulk", varargin{:});
end
