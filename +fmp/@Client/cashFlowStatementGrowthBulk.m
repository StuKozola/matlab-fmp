function out = cashFlowStatementGrowthBulk(obj, varargin)
%cashFlowStatementGrowthBulk Cash Flow Statement Growth Bulk API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/cash-flow-statement-growth-bulk", varargin{:});
end
