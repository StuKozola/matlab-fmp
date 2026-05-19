function out = financialScoresBulk(obj, varargin)
%financialScoresBulk Financial Scores Bulk API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/scores-bulk", varargin{:});
end
