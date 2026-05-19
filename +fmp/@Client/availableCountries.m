function out = availableCountries(obj, varargin)
%availableCountries Available Countries API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/available-countries", varargin{:});
end
