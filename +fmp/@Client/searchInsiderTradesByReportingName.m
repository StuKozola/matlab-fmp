function out = searchInsiderTradesByReportingName(obj, varargin)
%searchInsiderTradesByReportingName Search Insider Trades by Reporting Name API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/insider-trading/reporting-name", varargin{:});
end
