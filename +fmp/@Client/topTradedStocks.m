function out = topTradedStocks(obj, varargin)
%topTradedStocks Top Traded Stocks API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/most-actives", varargin{:});
end
