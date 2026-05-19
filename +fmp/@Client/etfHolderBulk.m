function out = etfHolderBulk(obj, varargin)
%etfHolderBulk ETF Holder Bulk API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/etf-holder-bulk", varargin{:});
end
