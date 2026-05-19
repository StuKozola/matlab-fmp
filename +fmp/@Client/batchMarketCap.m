function out = batchMarketCap(obj, varargin)
%batchMarketCap Batch Market Cap API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/market-capitalization-batch", varargin{:});
end
