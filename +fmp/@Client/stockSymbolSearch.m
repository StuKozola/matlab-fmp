function out = stockSymbolSearch(obj, varargin)
%stockSymbolSearch Stock Symbol Search API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/search-symbol", varargin{:});
end
