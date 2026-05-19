function out = cik(obj, varargin)
%cik CIK API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/search-cik", varargin{:});
end
