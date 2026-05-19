function out = historicalPrices(obj, varargin)
%historicalPrices Get end-of-day historical prices.

out = obj.endpoint("/stable/historical-price-eod/full", varargin{:});
end
