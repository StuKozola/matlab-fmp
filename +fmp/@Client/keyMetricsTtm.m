function out = keyMetricsTtm(obj, varargin)
%keyMetricsTtm Key Metrics TTM API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/key-metrics-ttm", varargin{:});
end
