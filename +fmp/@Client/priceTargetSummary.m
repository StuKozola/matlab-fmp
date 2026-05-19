function out = priceTargetSummary(obj, varargin)
%priceTargetSummary Price Target Summary API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/price-target-summary", varargin{:});
end
