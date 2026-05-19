function out = senateTradingActivity(obj, varargin)
%senateTradingActivity Senate Trading Activity API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/senate-trades", varargin{:});
end
