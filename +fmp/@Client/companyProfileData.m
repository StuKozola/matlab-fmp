function out = companyProfileData(obj, varargin)
%companyProfileData Company Profile Data API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/profile", varargin{:});
end
