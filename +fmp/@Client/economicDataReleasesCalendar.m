function out = economicDataReleasesCalendar(obj, varargin)
%economicDataReleasesCalendar Economic Data Releases Calendar API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/economic-calendar", varargin{:});
end
