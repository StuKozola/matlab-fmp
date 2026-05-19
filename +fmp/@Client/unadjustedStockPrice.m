function out = unadjustedStockPrice(obj, varargin)
%unadjustedStockPrice Unadjusted Stock Price API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/historical-price-eod/non-split-adjusted", varargin{:});
end
