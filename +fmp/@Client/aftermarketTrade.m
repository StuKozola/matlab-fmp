function out = aftermarketTrade(obj, varargin)
%aftermarketTrade Aftermarket Trade API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/aftermarket-trade", varargin{:});
end
