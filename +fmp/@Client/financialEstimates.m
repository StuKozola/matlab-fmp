function out = financialEstimates(obj, varargin)
%financialEstimates Financial Estimates API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/analyst-estimates", varargin{:});
end
