function out = etfMutualFundInformation(obj, varargin)
%etfMutualFundInformation ETF & Mutual Fund Information API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/etf/info", varargin{:});
end
