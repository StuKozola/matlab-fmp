function out = iposProspectus(obj, varargin)
%iposProspectus IPOs Prospectus API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/ipos-prospectus", varargin{:});
end
