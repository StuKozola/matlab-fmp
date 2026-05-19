function out = pressReleases(obj, varargin)
%pressReleases Press Releases API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/news/press-releases-latest", varargin{:});
end
