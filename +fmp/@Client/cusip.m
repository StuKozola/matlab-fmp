function out = cusip(obj, varargin)
%cusip CUSIP API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/search-cusip", varargin{:});
end
