function out = historicalMarketSectorPerformance(obj, varargin)
%historicalMarketSectorPerformance Historical Market Sector Performance API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/historical-sector-performance", varargin{:});
end
