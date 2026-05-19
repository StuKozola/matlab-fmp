function out = equityOfferingSearch(obj, varargin)
%equityOfferingSearch Equity Offering Search API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/fundraising-search", varargin{:});
end
