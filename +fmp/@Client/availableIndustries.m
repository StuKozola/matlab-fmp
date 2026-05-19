function out = availableIndustries(obj, varargin)
%availableIndustries Available Industries API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/available-industries", varargin{:});
end
