function out = uSHouseTrades(obj, varargin)
%uSHouseTrades U.S. House Trades API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/house-trades", varargin{:});
end
