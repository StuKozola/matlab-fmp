function out = financialRatios(obj, varargin)
%financialRatios Financial Ratios API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/ratios", varargin{:});
end
