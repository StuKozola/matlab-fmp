function out = ratios(obj, varargin)
%ratios Get financial ratios data.

out = obj.endpoint("/stable/ratios", varargin{:});
end
