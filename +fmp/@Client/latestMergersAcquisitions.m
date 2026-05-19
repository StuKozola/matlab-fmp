function out = latestMergersAcquisitions(obj, varargin)
%latestMergersAcquisitions Latest Mergers & Acquisitions API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/mergers-acquisitions-latest", varargin{:});
end
