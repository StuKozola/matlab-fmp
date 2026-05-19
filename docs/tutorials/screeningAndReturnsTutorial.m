%[text] # Screening and Returns with FMP
%[text] Use the FMP screener and historical price endpoints to create a compact equity research table.
%[text] - screen large technology companies
%[text] - fetch daily prices
%[text] - compute recent simple returns \
client = fmp.Client(MaxRetries=3, RetryDelay=seconds(1));
%%
%[text] ## Screen Companies
%[text] Pull a small page of companies so the tutorial stays responsive.
screen = client.stockScreener(sector="Technology", marketCapMoreThan=1e11, limit=10);
screen(:, ["symbol", "companyName", "marketCap", "sector"])
%%
%[text] ## Price History
%[text] Retrieve one year of daily prices for the first screened symbol.
symbol = string(screen.symbol(1));
prices = client.historicalPrices(symbol=symbol, from=datetime("today") - calyears(1), to=datetime("today"));
prices = sortrows(prices);
prices.Return = [NaN; diff(prices.close) ./ prices.close(1:end-1)];
head(prices(:, ["close", "volume", "Return"]))
%%
%[text] ## Return Chart
%[text] Compare price level and cumulative return for the selected company.
tiledlayout(2,1)
nexttile
plot(prices.Time, prices.close)
title(symbol + " close")
ylabel("Price")
grid on
nexttile
plot(prices.Time, cumprod(1 + fillmissing(prices.Return, "constant", 0)) - 1)
title(symbol + " cumulative return")
ylabel("Return")
grid on
%%
%[text] ## Summary
%[text] The same pattern works for larger screens by increasing |MaxPages| with |client.allPages|.
%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"inline"}
%---
