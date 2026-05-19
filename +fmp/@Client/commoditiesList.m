function out = commoditiesList(obj, varargin)
%commoditiesList Commodities List API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/commodities-list", varargin{:});
end
