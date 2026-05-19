function out = industryClassificationList(obj, varargin)
%industryClassificationList Industry Classification List API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/standard-industrial-classification-list", varargin{:});
end
