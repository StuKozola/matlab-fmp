function out = incomeStatement(obj, varargin)
%incomeStatement Get income statement data.

out = obj.endpoint("/stable/income-statement", varargin{:});
end
