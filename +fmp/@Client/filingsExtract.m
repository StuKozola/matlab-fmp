function out = filingsExtract(obj, varargin)
%filingsExtract Filings Extract API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/institutional-ownership/extract", varargin{:});
end
