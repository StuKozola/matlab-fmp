function out = historicalStockGrades(obj, varargin)
%historicalStockGrades Historical Stock Grades API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/grades-historical", varargin{:});
end
