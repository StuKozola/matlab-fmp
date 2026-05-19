function out = incomeStatementGrowth(obj, varargin)
%incomeStatementGrowth Income Statement Growth API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/income-statement-growth", varargin{:});
end
