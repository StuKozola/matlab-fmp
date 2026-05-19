function out = cotAnalysisByDates(obj, varargin)
%cotAnalysisByDates COT Analysis By Dates API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/commitment-of-traders-analysis", varargin{:});
end
