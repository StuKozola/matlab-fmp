function out = companyNameSearch(obj, varargin)
%companyNameSearch Company Name Search API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/search-name", varargin{:});
end
