function out = historicalIndustryPerformance(obj, varargin)
%historicalIndustryPerformance Historical Industry Performance API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/historical-industry-performance", varargin{:});
end
