function out = marketRiskPremium(obj, varargin)
%marketRiskPremium Market Risk Premium API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/market-risk-premium", varargin{:});
end
