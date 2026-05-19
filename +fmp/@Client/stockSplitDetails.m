function out = stockSplitDetails(obj, varargin)
%stockSplitDetails Stock Split Details API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/splits", varargin{:});
end
