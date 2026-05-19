function out = companyNotes(obj, varargin)
%companyNotes Company Notes API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/company-notes", varargin{:});
end
