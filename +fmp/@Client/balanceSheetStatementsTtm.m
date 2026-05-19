function out = balanceSheetStatementsTtm(obj, varargin)
%balanceSheetStatementsTtm Balance Sheet Statements TTM API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/balance-sheet-statement-ttm", varargin{:});
end
