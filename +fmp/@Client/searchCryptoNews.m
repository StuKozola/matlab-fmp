function out = searchCryptoNews(obj, varargin)
%searchCryptoNews Search Crypto News API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/news/crypto", varargin{:});
end
