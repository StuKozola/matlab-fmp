function out = exchangeVariants(obj, varargin)
%exchangeVariants Exchange Variants API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/search-exchange-variants", varargin{:});
end
