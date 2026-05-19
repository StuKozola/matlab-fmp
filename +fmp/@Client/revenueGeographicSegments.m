function out = revenueGeographicSegments(obj, varargin)
%revenueGeographicSegments Revenue Geographic Segments API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/revenue-geographic-segmentation", varargin{:});
end
