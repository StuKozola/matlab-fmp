function out = companyProfileBulk(obj, varargin)
%companyProfileBulk Company Profile Bulk API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/profile-bulk", varargin{:});
end
