function out = historicalIndustryPe(obj, varargin)
%historicalIndustryPe Historical Industry PE API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/historical-industry-pe", varargin{:});
end
