function out = searchInsiderTrades(obj, varargin)
%searchInsiderTrades Search Insider Trades API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/insider-trading/search", varargin{:});
end
