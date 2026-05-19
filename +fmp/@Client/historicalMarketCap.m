function out = historicalMarketCap(obj, varargin)
%historicalMarketCap Historical Market Cap API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/historical-market-capitalization", varargin{:});
end
