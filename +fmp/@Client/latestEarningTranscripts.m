function out = latestEarningTranscripts(obj, varargin)
%latestEarningTranscripts Latest Earning Transcripts API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/earning-call-transcript-latest", varargin{:});
end
