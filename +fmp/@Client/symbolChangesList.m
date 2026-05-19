function out = symbolChangesList(obj, varargin)
%symbolChangesList Symbol Changes List API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/symbol-change", varargin{:});
end
