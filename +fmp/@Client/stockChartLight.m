function out = stockChartLight(obj, varargin)
%stockChartLight Stock Chart Light API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/historical-price-eod/light", varargin{:});
end
