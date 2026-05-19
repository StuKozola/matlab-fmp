function out = get1HourIntervalCryptocurrencyData(obj, varargin)
%get1HourIntervalCryptocurrencyData 1-Hour Interval Cryptocurrency Data API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/historical-chart/1hour", varargin{:});
end
