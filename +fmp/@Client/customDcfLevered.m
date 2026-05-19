function out = customDcfLevered(obj, varargin)
%customDcfLevered Custom DCF Levered API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/custom-levered-discounted-cash-flow", varargin{:});
end
