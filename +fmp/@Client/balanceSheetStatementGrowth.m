function out = balanceSheetStatementGrowth(obj, varargin)
%balanceSheetStatementGrowth Balance Sheet Statement Growth API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/balance-sheet-statement-growth", varargin{:});
end
