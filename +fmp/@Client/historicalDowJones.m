function out = historicalDowJones(obj, varargin)
%historicalDowJones Historical Dow Jones API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/historical-dowjones-constituent", varargin{:});
end
