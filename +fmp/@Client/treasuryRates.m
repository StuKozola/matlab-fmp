function out = treasuryRates(obj, varargin)
%treasuryRates Treasury Rates API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/treasury-rates", varargin{:});
end
