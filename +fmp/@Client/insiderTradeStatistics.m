function out = insiderTradeStatistics(obj, varargin)
%insiderTradeStatistics Insider Trade Statistics API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/insider-trading/statistics", varargin{:});
end
