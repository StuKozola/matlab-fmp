function out = dividendAdjustedPriceChart(obj, varargin)
%dividendAdjustedPriceChart Dividend Adjusted Price Chart API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/historical-price-eod/dividend-adjusted", varargin{:});
end
