function out = forexShortQuote(obj, varargin)
%forexShortQuote Forex Short Quote API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/quote-short", varargin{:});
end
