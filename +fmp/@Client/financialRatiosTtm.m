function out = financialRatiosTtm(obj, varargin)
%financialRatiosTtm Financial Ratios TTM API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/ratios-ttm", varargin{:});
end
