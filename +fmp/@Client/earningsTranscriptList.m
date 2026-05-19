function out = earningsTranscriptList(obj, varargin)
%earningsTranscriptList Earnings Transcript List API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/earnings-transcript-list", varargin{:});
end
