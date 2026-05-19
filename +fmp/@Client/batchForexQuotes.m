function out = batchForexQuotes(obj, varargin)
%batchForexQuotes Batch Forex Quotes API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/batch-forex-quotes", varargin{:});
end
