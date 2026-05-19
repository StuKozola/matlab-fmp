function out = dcfValuationsBulk(obj, varargin)
%dcfValuationsBulk DCF Valuations Bulk API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/dcf-bulk", varargin{:});
end
