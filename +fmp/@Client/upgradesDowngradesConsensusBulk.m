function out = upgradesDowngradesConsensusBulk(obj, varargin)
%upgradesDowngradesConsensusBulk Upgrades Downgrades Consensus Bulk API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/upgrades-downgrades-consensus-bulk", varargin{:});
end
