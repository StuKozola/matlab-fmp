function out = historicalSP500(obj, varargin)
%historicalSP500 Historical S&P 500 API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/historical-sp500-constituent", varargin{:});
end
