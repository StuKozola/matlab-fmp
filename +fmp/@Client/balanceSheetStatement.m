function out = balanceSheetStatement(obj, varargin)
%balanceSheetStatement Get balance sheet statement data.

out = obj.endpoint("/stable/balance-sheet-statement", varargin{:});
end
