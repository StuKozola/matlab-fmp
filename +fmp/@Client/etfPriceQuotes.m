function out = etfPriceQuotes(obj, varargin)
%etfPriceQuotes ETF Price Quotes API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/batch-etf-quotes", varargin{:});
end
