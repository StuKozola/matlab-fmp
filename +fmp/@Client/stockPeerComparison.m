function out = stockPeerComparison(obj, varargin)
%stockPeerComparison Stock Peer Comparison API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/stock-peers", varargin{:});
end
