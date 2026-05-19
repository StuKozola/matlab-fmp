function out = dowJones(obj, varargin)
%dowJones Dow Jones API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/dowjones-constituent", varargin{:});
end
