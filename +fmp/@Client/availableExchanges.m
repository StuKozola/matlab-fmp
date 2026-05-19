function out = availableExchanges(obj, varargin)
%availableExchanges Available Exchanges API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/available-exchanges", varargin{:});
end
