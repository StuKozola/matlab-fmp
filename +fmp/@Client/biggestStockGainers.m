function out = biggestStockGainers(obj, varargin)
%biggestStockGainers Biggest Stock Gainers API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/biggest-gainers", varargin{:});
end
