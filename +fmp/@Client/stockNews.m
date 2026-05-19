function out = stockNews(obj, varargin)
%stockNews Stock News API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/news/stock-latest", varargin{:});
end
