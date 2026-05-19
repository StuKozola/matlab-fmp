function out = ownerEarnings(obj, varargin)
%ownerEarnings Owner Earnings API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/owner-earnings", varargin{:});
end
