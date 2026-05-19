function out = companyMarketCap(obj, varargin)
%companyMarketCap Company Market Cap API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/market-capitalization", varargin{:});
end
