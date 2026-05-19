function out = williams(obj, varargin)
%williams Williams API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/technical-indicators/williams", varargin{:});
end
