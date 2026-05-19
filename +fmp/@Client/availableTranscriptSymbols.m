function out = availableTranscriptSymbols(obj, varargin)
%availableTranscriptSymbols Available Transcript Symbols API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/earnings-transcript-list", varargin{:});
end
