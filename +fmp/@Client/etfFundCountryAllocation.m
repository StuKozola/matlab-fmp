function out = etfFundCountryAllocation(obj, varargin)
%etfFundCountryAllocation ETF & Fund Country Allocation API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/etf/country-weightings", varargin{:});
end
