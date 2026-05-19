function out = nasdaqIndex(obj, varargin)
%nasdaqIndex Nasdaq Index API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/nasdaq-constituent", varargin{:});
end
