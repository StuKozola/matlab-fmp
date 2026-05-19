function out = latestFinancialStatements(obj, varargin)
%latestFinancialStatements Latest Financial Statements API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/latest-financial-statements", varargin{:});
end
