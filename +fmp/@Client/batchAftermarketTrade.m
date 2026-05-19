function out = batchAftermarketTrade(obj, varargin)
%batchAftermarketTrade Batch Aftermarket Trade API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/batch-aftermarket-trade", varargin{:});
end
