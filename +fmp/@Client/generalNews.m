function out = generalNews(obj, varargin)
%generalNews General News API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/news/general-latest", varargin{:});
end
