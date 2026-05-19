function out = ratiosTtmBulk(obj, varargin)
%ratiosTtmBulk Ratios TTM Bulk API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/ratios-ttm-bulk", varargin{:});
end
