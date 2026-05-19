function out = etfAssetExposure(obj, varargin)
%etfAssetExposure ETF Asset Exposure API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/etf/asset-exposure", varargin{:});
end
