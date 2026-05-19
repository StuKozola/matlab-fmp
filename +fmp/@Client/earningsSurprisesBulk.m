function out = earningsSurprisesBulk(obj, varargin)
%earningsSurprisesBulk Earnings Surprises Bulk API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/earnings-surprises-bulk", varargin{:});
end
