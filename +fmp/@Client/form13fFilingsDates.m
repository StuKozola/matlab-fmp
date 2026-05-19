function out = form13fFilingsDates(obj, varargin)
%form13fFilingsDates Form 13F Filings Dates API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/institutional-ownership/dates", varargin{:});
end
