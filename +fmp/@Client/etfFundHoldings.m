function out = etfFundHoldings(obj, varargin)
%etfFundHoldings ETF & Fund Holdings API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/etf/holdings", varargin{:});
end
