function out = searchForexNews(obj, varargin)
%searchForexNews Search Forex News API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/news/forex", varargin{:});
end
