function out = positionsSummary(obj, varargin)
%positionsSummary Positions Summary API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/institutional-ownership/symbol-positions-summary", varargin{:});
end
