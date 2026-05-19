function out = incomeStatementBulk(obj, varargin)
%incomeStatementBulk Income Statement Bulk API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/income-statement-bulk", varargin{:});
end
