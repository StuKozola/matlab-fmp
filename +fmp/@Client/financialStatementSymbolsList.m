function out = financialStatementSymbolsList(obj, varargin)
%financialStatementSymbolsList Financial Statement Symbols List API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/financial-statement-symbol-list", varargin{:});
end
