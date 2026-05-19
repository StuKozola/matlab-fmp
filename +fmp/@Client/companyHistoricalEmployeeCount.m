function out = companyHistoricalEmployeeCount(obj, varargin)
%companyHistoricalEmployeeCount Company Historical Employee Count API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/historical-employee-count", varargin{:});
end
