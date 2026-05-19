function out = eodBulk(obj, varargin)
%eodBulk Eod Bulk API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/eod-bulk", varargin{:});
end
