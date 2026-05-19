function out = mutualFundEtfDisclosure(obj, varargin)
%mutualFundEtfDisclosure Mutual Fund & ETF Disclosure API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/funds/disclosure-holders-latest", varargin{:});
end
