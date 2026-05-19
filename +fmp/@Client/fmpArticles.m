function out = fmpArticles(obj, varargin)
%fmpArticles FMP Articles API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/fmp-articles", varargin{:});
end
