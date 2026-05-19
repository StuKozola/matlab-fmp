function out = incomeStatementGrowthBulk(obj, varargin)
%incomeStatementGrowthBulk Income Statement Growth Bulk API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/income-statement-growth-bulk", varargin{:});
end
