function out = secCompanyFullProfile(obj, varargin)
%secCompanyFullProfile SEC Company Full Profile API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/sec-profile", varargin{:});
end
