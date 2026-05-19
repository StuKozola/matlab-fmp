function out = forexNews(obj, varargin)
%forexNews Forex News API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/news/forex-latest", varargin{:});
end
