function out = get1MinuteIntervalCryptocurrencyData(obj, varargin)
%get1MinuteIntervalCryptocurrencyData 1-Minute Interval Cryptocurrency Data API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/historical-chart/1min", varargin{:});
end
