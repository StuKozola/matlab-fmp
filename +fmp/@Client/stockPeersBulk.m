function out = stockPeersBulk(obj, varargin)
%stockPeersBulk Stock Peers Bulk API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/peers-bulk", varargin{:});
end
