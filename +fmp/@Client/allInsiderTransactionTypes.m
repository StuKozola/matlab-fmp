function out = allInsiderTransactionTypes(obj, varargin)
%allInsiderTransactionTypes All Insider Transaction Types API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/insider-trading-transaction-type", varargin{:});
end
