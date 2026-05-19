function out = historicalIndexFullChart(obj, varargin)
%historicalIndexFullChart Historical Index Full Chart API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/historical-price-eod/full", varargin{:});
end
