function out = lightChart(obj, varargin)
%lightChart Light Chart API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/historical-price-eod/light", varargin{:});
end
