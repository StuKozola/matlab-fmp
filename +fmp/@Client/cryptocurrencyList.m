function out = cryptocurrencyList(obj, varargin)
%cryptocurrencyList Cryptocurrency List API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/cryptocurrency-list", varargin{:});
end
