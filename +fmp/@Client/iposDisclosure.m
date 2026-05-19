function out = iposDisclosure(obj, varargin)
%iposDisclosure IPOs Disclosure API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/ipos-disclosure", varargin{:});
end
