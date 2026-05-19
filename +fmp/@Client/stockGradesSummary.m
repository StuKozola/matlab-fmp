function out = stockGradesSummary(obj, varargin)
%stockGradesSummary Stock Grades Summary API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/grades-consensus", varargin{:});
end
