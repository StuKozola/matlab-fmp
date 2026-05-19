function out = companyShareFloatLiquidity(obj, varargin)
%companyShareFloatLiquidity Company Share Float & Liquidity API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/shares-float", varargin{:});
end
