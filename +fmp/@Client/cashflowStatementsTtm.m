function out = cashflowStatementsTtm(obj, varargin)
%cashflowStatementsTtm Cashflow Statements TTM API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/cash-flow-statement-ttm", varargin{:});
end
