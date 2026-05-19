function out = financialScores(obj, varargin)
%financialScores Financial Scores API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/financial-scores", varargin{:});
end
