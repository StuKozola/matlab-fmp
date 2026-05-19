function out = mutualFundPriceQuotes(obj, varargin)
%mutualFundPriceQuotes Mutual Fund Price Quotes API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/batch-mutualfund-quotes", varargin{:});
end
