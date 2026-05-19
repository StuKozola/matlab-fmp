function out = isin(obj, varargin)
%isin ISIN API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/search-isin", varargin{:});
end
