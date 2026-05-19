function out = cashFlowStatementBulk(obj, varargin)
%cashFlowStatementBulk Cash Flow Statement Bulk API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/cash-flow-statement-bulk", varargin{:});
end
