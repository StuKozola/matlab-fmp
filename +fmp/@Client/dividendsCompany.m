function out = dividendsCompany(obj, varargin)
%dividendsCompany Dividends Company API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/dividends", varargin{:});
end
