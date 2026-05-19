function out = allIndustryClassification(obj, varargin)
%allIndustryClassification All Industry Classification API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/all-industry-classification", varargin{:});
end
