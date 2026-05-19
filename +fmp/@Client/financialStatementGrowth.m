function out = financialStatementGrowth(obj, varargin)
%financialStatementGrowth Financial Statement Growth API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/financial-growth", varargin{:});
end
