function out = get5MinuteIntervalCryptocurrencyData(obj, varargin)
%get5MinuteIntervalCryptocurrencyData 5-Minute Interval Cryptocurrency Data API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/historical-chart/5min", varargin{:});
end
