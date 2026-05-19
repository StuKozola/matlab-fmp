function out = keyMetricsTtmBulk(obj, varargin)
%keyMetricsTtmBulk Key Metrics TTM Bulk API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/key-metrics-ttm-bulk", varargin{:});
end
