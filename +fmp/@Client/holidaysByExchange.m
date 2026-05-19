function out = holidaysByExchange(obj, varargin)
%holidaysByExchange Holidays By Exchange API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/holidays-by-exchange", varargin{:});
end
