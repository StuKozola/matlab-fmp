function out = cikList(obj, varargin)
%cikList CIK List API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/cik-list", varargin{:});
end
