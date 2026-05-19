function out = companyEmployeeCount(obj, varargin)
%companyEmployeeCount Company Employee Count API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/employee-count", varargin{:});
end
