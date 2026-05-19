function out = activelyTradingList(obj, varargin)
%activelyTradingList Actively Trading List API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/actively-trading-list", varargin{:});
end
