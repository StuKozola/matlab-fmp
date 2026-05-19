function out = stockSplitsCalendar(obj, varargin)
%stockSplitsCalendar Stock Splits Calendar API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/splits-calendar", varargin{:});
end
