function out = equityOfferingByCik(obj, varargin)
%equityOfferingByCik Equity Offering By CIK API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/fundraising", varargin{:});
end
