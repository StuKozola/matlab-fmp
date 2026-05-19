function out = latestInsiderTrading(obj, varargin)
%latestInsiderTrading Latest Insider Trading API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/insider-trading/latest", varargin{:});
end
