function out = transcriptsDatesBySymbol(obj, varargin)
%transcriptsDatesBySymbol Transcripts Dates By Symbol API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/earning-call-transcript-dates", varargin{:});
end
