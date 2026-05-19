function out = industryClassificationSearch(obj, varargin)
%industryClassificationSearch Industry Classification Search API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/industry-classification-search", varargin{:});
end
