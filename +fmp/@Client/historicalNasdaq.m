function out = historicalNasdaq(obj, varargin)
%historicalNasdaq Historical Nasdaq API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/historical-nasdaq-constituent", varargin{:});
end
