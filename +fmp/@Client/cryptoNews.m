function out = cryptoNews(obj, varargin)
%cryptoNews Crypto News API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/news/crypto-latest", varargin{:});
end
