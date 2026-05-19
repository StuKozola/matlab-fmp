function out = earningsCalendar(obj, varargin)
%earningsCalendar Earnings Calendar API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/earnings-calendar", varargin{:});
end
