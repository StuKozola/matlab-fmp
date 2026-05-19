function out = revenueProductSegmentation(obj, varargin)
%revenueProductSegmentation Revenue Product Segmentation API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/revenue-product-segmentation", varargin{:});
end
