function out = priceTargetConsensus(obj, varargin)
%priceTargetConsensus Price Target Consensus API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/price-target-consensus", varargin{:});
end
