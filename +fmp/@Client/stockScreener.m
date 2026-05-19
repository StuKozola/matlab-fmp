function out = stockScreener(obj, varargin)
%stockScreener Stock Screener API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/company-screener", varargin{:});
end
