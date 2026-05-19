function out = allExchangeMarketHours(obj, varargin)
%allExchangeMarketHours All Exchange Market Hours API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/all-exchange-market-hours", varargin{:});
end
