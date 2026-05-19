function out = stockRatingBulk(obj, varargin)
%stockRatingBulk Stock Rating Bulk API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/rating-bulk", varargin{:});
end
