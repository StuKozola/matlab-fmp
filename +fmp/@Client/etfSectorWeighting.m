function out = etfSectorWeighting(obj, varargin)
%etfSectorWeighting ETF Sector Weighting API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/etf/sector-weightings", varargin{:});
end
