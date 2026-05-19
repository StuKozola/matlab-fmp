function out = companyProfileByCik(obj, varargin)
%companyProfileByCik Company Profile by CIK API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/profile-cik", varargin{:});
end
