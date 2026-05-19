function out = biggestStockLosers(obj, varargin)
%biggestStockLosers Biggest Stock Losers API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/biggest-losers", varargin{:});
end
