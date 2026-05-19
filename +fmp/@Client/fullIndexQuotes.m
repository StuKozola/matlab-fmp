function out = fullIndexQuotes(obj, varargin)
%fullIndexQuotes Full Index Quotes API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/batch-index-quotes", varargin{:});
end
