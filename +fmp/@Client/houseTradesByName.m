function out = houseTradesByName(obj, varargin)
%houseTradesByName House Trades By Name API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/house-trades-by-name", varargin{:});
end
