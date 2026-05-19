function out = customDcfAdvanced(obj, varargin)
%customDcfAdvanced Custom DCF Advanced API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/custom-discounted-cash-flow", varargin{:});
end
