function out = economicsIndicators(obj, varargin)
%economicsIndicators Economics Indicators API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/economic-indicators", varargin{:});
end
