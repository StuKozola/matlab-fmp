function out = historicalRatings(obj, varargin)
%historicalRatings Historical Ratings API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/ratings-historical", varargin{:});
end
