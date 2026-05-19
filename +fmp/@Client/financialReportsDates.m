function out = financialReportsDates(obj, varargin)
%financialReportsDates Financial Reports Dates API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/financial-reports-dates", varargin{:});
end
