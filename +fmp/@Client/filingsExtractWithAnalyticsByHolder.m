function out = filingsExtractWithAnalyticsByHolder(obj, varargin)
%filingsExtractWithAnalyticsByHolder Filings Extract With Analytics By Holder API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/institutional-ownership/extract-analytics/holder", varargin{:});
end
