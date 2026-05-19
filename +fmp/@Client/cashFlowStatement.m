function out = cashFlowStatement(obj, varargin)
%cashFlowStatement Get cash flow statement data.

out = obj.endpoint("/stable/cash-flow-statement", varargin{:});
end
