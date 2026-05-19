function out = batchAftermarketQuote(obj, varargin)
%batchAftermarketQuote Batch Aftermarket Quote API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/batch-aftermarket-quote", varargin{:});
end
