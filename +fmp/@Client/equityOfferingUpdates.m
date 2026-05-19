function out = equityOfferingUpdates(obj, varargin)
%equityOfferingUpdates Equity Offering Updates API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/fundraising-latest", varargin{:});
end
