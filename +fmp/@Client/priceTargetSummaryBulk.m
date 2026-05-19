function out = priceTargetSummaryBulk(obj, varargin)
%priceTargetSummaryBulk Price Target Summary Bulk API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/price-target-summary-bulk", varargin{:});
end
