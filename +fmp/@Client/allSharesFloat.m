function out = allSharesFloat(obj, varargin)
%allSharesFloat All Shares Float API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/shares-float-all", varargin{:});
end
