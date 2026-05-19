function out = leveredDcf(obj, varargin)
%leveredDcf Levered DCF API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/levered-discounted-cash-flow", varargin{:});
end
