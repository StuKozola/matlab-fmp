function out = delistedCompanies(obj, varargin)
%delistedCompanies Delisted Companies API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/delisted-companies", varargin{:});
end
