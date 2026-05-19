function out = dcfValuation(obj, varargin)
%dcfValuation DCF Valuation API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/discounted-cash-flow", varargin{:});
end
