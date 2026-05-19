function out = earningsTranscript(obj, varargin)
%earningsTranscript Earnings Transcript API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/earning-call-transcript", varargin{:});
end
