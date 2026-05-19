function out = forexCurrencyPairs(obj, varargin)
%forexCurrencyPairs Forex Currency Pairs API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/forex-list", varargin{:});
end
