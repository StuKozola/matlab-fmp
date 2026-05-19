function out = fullForexQuote(obj, varargin)
%fullForexQuote Full Forex Quote API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/batch-forex-quotes", varargin{:});
end
