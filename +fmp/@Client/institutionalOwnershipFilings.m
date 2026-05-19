function out = institutionalOwnershipFilings(obj, varargin)
%institutionalOwnershipFilings Institutional Ownership Filings API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/institutional-ownership/latest", varargin{:});
end
