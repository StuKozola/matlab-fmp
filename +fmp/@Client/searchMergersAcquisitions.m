function out = searchMergersAcquisitions(obj, varargin)
%searchMergersAcquisitions Search Mergers & Acquisitions API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/mergers-acquisitions-search", varargin{:});
end
