function out = etfSymbolSearch(obj, varargin)
%etfSymbolSearch ETF Symbol Search API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/etf-list", varargin{:});
end
