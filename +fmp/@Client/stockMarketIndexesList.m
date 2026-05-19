function out = stockMarketIndexesList(obj, varargin)
%stockMarketIndexesList Stock Market Indexes List API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/index-list", varargin{:});
end
