function out = searchStockNews(obj, varargin)
%searchStockNews Search Stock News API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/news/stock", varargin{:});
end
