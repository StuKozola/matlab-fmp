function out = searchPressReleases(obj, varargin)
%searchPressReleases Search Press Releases API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/news/press-releases", varargin{:});
end
