function out = globalExchangeMarketHours(obj, varargin)
%globalExchangeMarketHours Global Exchange Market Hours API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/exchange-market-hours", varargin{:});
end
