function out = stockBatchQuoteShort(obj, varargin)
%stockBatchQuoteShort Stock Batch Quote Short API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/batch-quote-short", varargin{:});
end
