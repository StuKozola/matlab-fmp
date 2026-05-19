function out = cashflowStatementGrowth(obj, varargin)
%cashflowStatementGrowth Cashflow Statement Growth API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/cash-flow-statement-growth", varargin{:});
end
