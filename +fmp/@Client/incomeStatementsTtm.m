function out = incomeStatementsTtm(obj, varargin)
%incomeStatementsTtm Income Statements TTM API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/income-statement-ttm", varargin{:});
end
