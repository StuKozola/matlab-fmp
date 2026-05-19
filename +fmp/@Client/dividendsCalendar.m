function out = dividendsCalendar(obj, varargin)
%dividendsCalendar Dividends Calendar API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/dividends-calendar", varargin{:});
end
