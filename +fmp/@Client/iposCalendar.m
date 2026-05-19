function out = iposCalendar(obj, varargin)
%iposCalendar IPOs Calendar API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/ipos-calendar", varargin{:});
end
