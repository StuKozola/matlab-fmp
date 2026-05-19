function out = keyMetrics(obj, varargin)
%keyMetrics Get key metrics data.

out = obj.endpoint("/stable/key-metrics", varargin{:});
end
