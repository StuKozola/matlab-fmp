function out = senateTradesByName(obj, varargin)
%senateTradesByName Senate Trades By Name API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/senate-trades-by-name", varargin{:});
end
