function out = enterpriseValues(obj, varargin)
%enterpriseValues Enterprise Values API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/enterprise-values", varargin{:});
end
