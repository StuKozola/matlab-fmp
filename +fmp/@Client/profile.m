function out = profile(obj, varargin)
%profile Get company profile data.

out = obj.endpoint("/stable/profile", varargin{:});
end
