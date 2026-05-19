function out = ratingsSnapshot(obj, varargin)
%ratingsSnapshot Ratings Snapshot API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/ratings-snapshot", varargin{:});
end
