function out = forexQuote(obj, varargin)
%forexQuote Forex Quote API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/quote", varargin{:});
end
