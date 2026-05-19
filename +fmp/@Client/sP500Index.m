function out = sP500Index(obj, varargin)
%sP500Index S&P 500 Index API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/sp500-constituent", varargin{:});
end
