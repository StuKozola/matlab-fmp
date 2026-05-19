function out = allIndexQuotes(obj, varargin)
%allIndexQuotes All Index Quotes API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/batch-index-quotes", varargin{:});
end
