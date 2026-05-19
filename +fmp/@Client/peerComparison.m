function peers = peerComparison(obj, symbol, options)
%peerComparison Return a ranked peer comparison table for one symbol.

arguments
    obj (1,1) fmp.Client
    symbol (1,1) string
    options.SortBy (1,1) string = "mktCap"
    options.SortDirection (1,1) string = "descend"
    options.Top (1,1) double {mustBeInteger, mustBePositive} = 10
end

peers = obj.stockPeerComparison(symbol=symbol);
peers = fmp.internal.sortTable(peers, options.SortBy, options.SortDirection);

if height(peers) > options.Top
    peers = peers(1:options.Top, :);
end

peers.PeerRank = (1:height(peers))';
peers = movevars(peers, "PeerRank", Before=1);
end
