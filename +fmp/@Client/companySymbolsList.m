function out = companySymbolsList(obj, varargin)
%companySymbolsList Company Symbols List API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/stock-list", varargin{:});
end
