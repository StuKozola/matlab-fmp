function out = esgRatings(obj, varargin)
%esgRatings ESG Ratings API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/esg-ratings", varargin{:});
end
