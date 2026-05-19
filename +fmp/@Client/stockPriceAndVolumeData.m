function out = stockPriceAndVolumeData(obj, varargin)
%stockPriceAndVolumeData Stock Price and Volume Data API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/historical-price-eod/full", varargin{:});
end
