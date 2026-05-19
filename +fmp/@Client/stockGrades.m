function out = stockGrades(obj, varargin)
%stockGrades Stock Grades API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/grades", varargin{:});
end
