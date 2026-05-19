function out = companyExecutives(obj, varargin)
%companyExecutives Company Executives API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/key-executives", varargin{:});
end
