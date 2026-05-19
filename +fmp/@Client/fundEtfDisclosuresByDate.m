function out = fundEtfDisclosuresByDate(obj, varargin)
%fundEtfDisclosuresByDate Fund & ETF Disclosures by Date API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/funds/disclosure-dates", varargin{:});
end
