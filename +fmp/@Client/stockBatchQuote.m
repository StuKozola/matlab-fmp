function out = stockBatchQuote(obj, varargin)
%stockBatchQuote Stock Batch Quote API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/batch-quote", varargin{:});
end
