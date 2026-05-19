# Generated FMP Endpoint Catalog

Generated from https://site.financialmodelingprep.com/developer/docs.

| Method | Category | Title | Path | Required | Optional/example | Date hint |
| --- | --- | --- | --- | --- | --- | --- |
| `stockSymbolSearch` | Company Search | Stock Symbol Search API | `/stable/search-symbol` | query |  |  |
| `companyNameSearch` | Company Search | Company Name Search API | `/stable/search-name` | query |  |  |
| `cik` | Company Search | CIK API | `/stable/search-cik` | cik |  |  |
| `cusip` | Company Search | CUSIP API | `/stable/search-cusip` | cusip |  |  |
| `isin` | Company Search | ISIN API | `/stable/search-isin` | isin |  |  |
| `stockScreener` | Company Search | Stock Screener API | `/stable/company-screener` |  |  |  |
| `exchangeVariants` | Company Search | Exchange Variants API | `/stable/search-exchange-variants` | symbol |  |  |
| `companySymbolsList` | Stock Directory | Company Symbols List API | `/stable/stock-list` |  |  |  |
| `financialStatementSymbolsList` | Stock Directory | Financial Statement Symbols List API | `/stable/financial-statement-symbol-list` |  |  |  |
| `cikList` | Stock Directory | CIK List API | `/stable/cik-list` |  | page, limit |  |
| `symbolChangesList` | Stock Directory | Symbol Changes List API | `/stable/symbol-change` |  |  |  |
| `etfSymbolSearch` | Stock Directory | ETF Symbol Search API | `/stable/etf-list` |  |  |  |
| `activelyTradingList` | Stock Directory | Actively Trading List API | `/stable/actively-trading-list` |  |  |  |
| `earningsTranscriptList` | Stock Directory | Earnings Transcript List API | `/stable/earnings-transcript-list` |  |  | date |
| `availableExchanges` | Stock Directory | Available Exchanges API | `/stable/available-exchanges` |  |  |  |
| `availableSectors` | Stock Directory | Available Sectors API | `/stable/available-sectors` |  |  |  |
| `availableIndustries` | Stock Directory | Available Industries API | `/stable/available-industries` |  |  |  |
| `availableCountries` | Stock Directory | Available Countries API | `/stable/available-countries` |  |  |  |
| `companyProfileData` | Company Information | Company Profile Data API | `/stable/profile` | symbol |  |  |
| `companyProfileByCik` | Company Information | Company Profile by CIK API | `/stable/profile-cik` | cik |  |  |
| `companyNotes` | Company Information | Company Notes API | `/stable/company-notes` | symbol |  |  |
| `stockPeerComparison` | Company Information | Stock Peer Comparison API | `/stable/stock-peers` | symbol |  |  |
| `delistedCompanies` | Company Information | Delisted Companies API | `/stable/delisted-companies` |  | page, limit |  |
| `companyEmployeeCount` | Company Information | Company Employee Count API | `/stable/employee-count` | symbol |  |  |
| `companyHistoricalEmployeeCount` | Company Information | Company Historical Employee Count API | `/stable/historical-employee-count` | symbol |  | date |
| `companyMarketCap` | Company Information | Company Market Cap API | `/stable/market-capitalization` | symbol |  |  |
| `batchMarketCap` | Company Information | Batch Market Cap API | `/stable/market-capitalization-batch` | symbols |  |  |
| `historicalMarketCap` | Company Information | Historical Market Cap API | `/stable/historical-market-capitalization` | symbol |  | date |
| `companyShareFloatLiquidity` | Company Information | Company Share Float & Liquidity API | `/stable/shares-float` | symbol |  |  |
| `allSharesFloat` | Company Information | All Shares Float API | `/stable/shares-float-all` |  | page, limit |  |
| `latestMergersAcquisitions` | Company Information | Latest Mergers & Acquisitions API | `/stable/mergers-acquisitions-latest` |  | page, limit |  |
| `searchMergersAcquisitions` | Company Information | Search Mergers & Acquisitions API | `/stable/mergers-acquisitions-search` | name |  |  |
| `companyExecutives` | Company Information | Company Executives API | `/stable/key-executives` | symbol |  |  |
| `executiveCompensation` | Company Information | Executive Compensation API | `/stable/governance-executive-compensation` | symbol |  |  |
| `executiveCompensationBenchmark` | Company Information | Executive Compensation Benchmark API | `/stable/executive-compensation-benchmark` |  |  |  |
| `stockQuote` | Quote | Stock Quote API | `/stable/quote` | symbol |  |  |
| `stockQuoteShort` | Quote | Stock Quote Short API | `/stable/quote-short` | symbol |  |  |
| `aftermarketTrade` | Quote | Aftermarket Trade API | `/stable/aftermarket-trade` | symbol |  | date |
| `aftermarketQuote` | Quote | Aftermarket Quote API | `/stable/aftermarket-quote` | symbol |  |  |
| `stockPriceChange` | Quote | Stock Price Change API | `/stable/stock-price-change` | symbol |  |  |
| `stockBatchQuote` | Quote | Stock Batch Quote API | `/stable/batch-quote` | symbols |  |  |
| `stockBatchQuoteShort` | Quote | Stock Batch Quote Short API | `/stable/batch-quote-short` | symbols |  |  |
| `batchAftermarketTrade` | Quote | Batch Aftermarket Trade API | `/stable/batch-aftermarket-trade` | symbols |  | date |
| `batchAftermarketQuote` | Quote | Batch Aftermarket Quote API | `/stable/batch-aftermarket-quote` | symbols |  |  |
| `exchangeStockQuotes` | Quote | Exchange Stock Quotes API | `/stable/batch-exchange-quote` | exchange |  |  |
| `mutualFundPriceQuotes` | Quote | Mutual Fund Price Quotes API | `/stable/batch-mutualfund-quotes` |  |  |  |
| `etfPriceQuotes` | Quote | ETF Price Quotes API | `/stable/batch-etf-quotes` |  |  |  |
| `fullCommoditiesQuotes` | Quote | Full Commodities Quotes API | `/stable/batch-commodity-quotes` |  |  |  |
| `fullCryptocurrencyQuotes` | Quote | Full Cryptocurrency Quotes API | `/stable/batch-crypto-quotes` |  |  |  |
| `fullForexQuote` | Quote | Full Forex Quote API | `/stable/batch-forex-quotes` |  |  |  |
| `fullIndexQuotes` | Quote | Full Index Quotes API | `/stable/batch-index-quotes` |  |  |  |
| `incomeStatement` | Statements | Income Statement API | `/stable/income-statement` | symbol |  |  |
| `balanceSheetStatement` | Statements | Balance Sheet Statement API | `/stable/balance-sheet-statement` | symbol |  |  |
| `cashFlowStatement` | Statements | Cash Flow Statement API | `/stable/cash-flow-statement` | symbol |  |  |
| `latestFinancialStatements` | Statements | Latest Financial Statements API | `/stable/latest-financial-statements` |  | page, limit |  |
| `incomeStatementsTtm` | Statements | Income Statements TTM API | `/stable/income-statement-ttm` | symbol |  |  |
| `balanceSheetStatementsTtm` | Statements | Balance Sheet Statements TTM API | `/stable/balance-sheet-statement-ttm` | symbol |  |  |
| `cashflowStatementsTtm` | Statements | Cashflow Statements TTM API | `/stable/cash-flow-statement-ttm` | symbol |  |  |
| `keyMetrics` | Statements | Key Metrics API | `/stable/key-metrics` | symbol |  |  |
| `financialRatios` | Statements | Financial Ratios API | `/stable/ratios` | symbol |  |  |
| `keyMetricsTtm` | Statements | Key Metrics TTM API | `/stable/key-metrics-ttm` | symbol |  |  |
| `financialRatiosTtm` | Statements | Financial Ratios TTM API | `/stable/ratios-ttm` | symbol |  |  |
| `financialScores` | Statements | Financial Scores API | `/stable/financial-scores` | symbol |  |  |
| `ownerEarnings` | Statements | Owner Earnings API | `/stable/owner-earnings` | symbol |  | date |
| `enterpriseValues` | Statements | Enterprise Values API | `/stable/enterprise-values` | symbol |  |  |
| `incomeStatementGrowth` | Statements | Income Statement Growth API | `/stable/income-statement-growth` | symbol |  |  |
| `balanceSheetStatementGrowth` | Statements | Balance Sheet Statement Growth API | `/stable/balance-sheet-statement-growth` | symbol |  |  |
| `cashflowStatementGrowth` | Statements | Cashflow Statement Growth API | `/stable/cash-flow-statement-growth` | symbol |  |  |
| `financialStatementGrowth` | Statements | Financial Statement Growth API | `/stable/financial-growth` | symbol |  |  |
| `financialReportsDates` | Statements | Financial Reports Dates API | `/stable/financial-reports-dates` | symbol |  | date |
| `financialReportsForm10KJson` | Statements | Financial Reports Form 10-K JSON API | `/stable/financial-reports-json` | symbol | year, period |  |
| `financialReportsForm10KXlsx` | Statements | Financial Reports Form 10-K XLSX API | `/stable/financial-reports-xlsx` | symbol | year, period |  |
| `revenueProductSegmentation` | Statements | Revenue Product Segmentation API | `/stable/revenue-product-segmentation` | symbol |  |  |
| `revenueGeographicSegments` | Statements | Revenue Geographic Segments API | `/stable/revenue-geographic-segmentation` | symbol |  |  |
| `asReportedIncomeStatements` | Statements | As Reported Income Statements API | `/stable/income-statement-as-reported` | symbol |  |  |
| `asReportedBalanceStatements` | Statements | As Reported Balance Statements API | `/stable/balance-sheet-statement-as-reported` | symbol |  |  |
| `asReportedCashflowStatements` | Statements | As Reported Cashflow Statements API | `/stable/cash-flow-statement-as-reported` | symbol |  |  |
| `asReportedFinancialStatements` | Statements | As Reported Financial Statements API | `/stable/financial-statement-full-as-reported` | symbol |  |  |
| `stockChartLight` | Charts | Stock Chart Light API | `/stable/historical-price-eod/light` | symbol |  | date |
| `stockPriceAndVolumeData` | Charts | Stock Price and Volume Data API | `/stable/historical-price-eod/full` | symbol |  | date |
| `unadjustedStockPrice` | Charts | Unadjusted Stock Price API | `/stable/historical-price-eod/non-split-adjusted` | symbol |  | date |
| `dividendAdjustedPriceChart` | Charts | Dividend Adjusted Price Chart API | `/stable/historical-price-eod/dividend-adjusted` | symbol |  | date |
| `get1MinIntervalStockChart` | Charts | 1 Min Interval Stock Chart API | `/stable/historical-chart/1min` | symbol |  | date |
| `get5MinIntervalStockChart` | Charts | 5 Min Interval Stock Chart API | `/stable/historical-chart/5min` | symbol |  | date |
| `get15MinIntervalStockChart` | Charts | 15 Min Interval Stock Chart API | `/stable/historical-chart/15min` | symbol |  | date |
| `get30MinIntervalStockChart` | Charts | 30 Min Interval Stock Chart API | `/stable/historical-chart/30min` | symbol |  | date |
| `get1HourIntervalStockChart` | Charts | 1 Hour Interval Stock Chart API | `/stable/historical-chart/1hour` | symbol |  | date |
| `get4HourIntervalStockChart` | Charts | 4 Hour Interval Stock Chart API | `/stable/historical-chart/4hour` | symbol |  | date |
| `treasuryRates` | Economics | Treasury Rates API | `/stable/treasury-rates` |  |  |  |
| `economicsIndicators` | Economics | Economics Indicators API | `/stable/economic-indicators` | name |  |  |
| `economicDataReleasesCalendar` | Economics | Economic Data Releases Calendar API | `/stable/economic-calendar` |  |  | date |
| `marketRiskPremium` | Economics | Market Risk Premium API | `/stable/market-risk-premium` |  |  |  |
| `dividendsCompany` | Earnings, Dividends, Splits | Dividends Company API | `/stable/dividends` | symbol |  |  |
| `dividendsCalendar` | Earnings, Dividends, Splits | Dividends Calendar API | `/stable/dividends-calendar` |  |  | date |
| `earningsReport` | Earnings, Dividends, Splits | Earnings Report API | `/stable/earnings` | symbol |  | date |
| `earningsCalendar` | Earnings, Dividends, Splits | Earnings Calendar API | `/stable/earnings-calendar` |  |  | date |
| `iposCalendar` | Earnings, Dividends, Splits | IPOs Calendar API | `/stable/ipos-calendar` |  |  | date |
| `iposDisclosure` | Earnings, Dividends, Splits | IPOs Disclosure API | `/stable/ipos-disclosure` |  |  |  |
| `iposProspectus` | Earnings, Dividends, Splits | IPOs Prospectus API | `/stable/ipos-prospectus` |  |  |  |
| `stockSplitDetails` | Earnings, Dividends, Splits | Stock Split Details API | `/stable/splits` | symbol |  |  |
| `stockSplitsCalendar` | Earnings, Dividends, Splits | Stock Splits Calendar API | `/stable/splits-calendar` |  |  | date |
| `latestEarningTranscripts` | Earnings Transcript | Latest Earning Transcripts API | `/stable/earning-call-transcript-latest` |  |  | date |
| `earningsTranscript` | Earnings Transcript | Earnings Transcript API | `/stable/earning-call-transcript` | symbol | year, quarter | date |
| `transcriptsDatesBySymbol` | Earnings Transcript | Transcripts Dates By Symbol API | `/stable/earning-call-transcript-dates` | symbol |  | date |
| `availableTranscriptSymbols` | Earnings Transcript | Available Transcript Symbols API | `/stable/earnings-transcript-list` |  |  | date |
| `fmpArticles` | News | FMP Articles API | `/stable/fmp-articles` |  | page, limit |  |
| `generalNews` | News | General News API | `/stable/news/general-latest` |  | page, limit | date |
| `pressReleases` | News | Press Releases API | `/stable/news/press-releases-latest` |  | page, limit | date |
| `stockNews` | News | Stock News API | `/stable/news/stock-latest` |  | page, limit | date |
| `cryptoNews` | News | Crypto News API | `/stable/news/crypto-latest` |  | page, limit | date |
| `forexNews` | News | Forex News API | `/stable/news/forex-latest` |  | page, limit | date |
| `searchPressReleases` | News | Search Press Releases API | `/stable/news/press-releases` | symbols |  | date |
| `searchStockNews` | News | Search Stock News API | `/stable/news/stock` | symbols |  | date |
| `searchCryptoNews` | News | Search Crypto News API | `/stable/news/crypto` | symbols |  | date |
| `searchForexNews` | News | Search Forex News API | `/stable/news/forex` | symbols |  | date |
| `institutionalOwnershipFilings` | Form 13F | Institutional Ownership Filings API | `/stable/institutional-ownership/latest` |  | page, limit | filingDate |
| `filingsExtract` | Form 13F | Filings Extract API | `/stable/institutional-ownership/extract` | cik | year, quarter | filingDate |
| `form13fFilingsDates` | Form 13F | Form 13F Filings Dates API | `/stable/institutional-ownership/dates` | cik |  | filingDate |
| `filingsExtractWithAnalyticsByHolder` | Form 13F | Filings Extract With Analytics By Holder API | `/stable/institutional-ownership/extract-analytics/holder` | symbol | year, quarter, page, limit | filingDate |
| `holderPerformanceSummary` | Form 13F | Holder Performance Summary API | `/stable/institutional-ownership/holder-performance-summary` | cik | page |  |
| `holdersIndustryBreakdown` | Form 13F | Holders Industry Breakdown API | `/stable/institutional-ownership/holder-industry-breakdown` | cik | year, quarter |  |
| `positionsSummary` | Form 13F | Positions Summary API | `/stable/institutional-ownership/symbol-positions-summary` | symbol | year, quarter |  |
| `industryPerformanceSummary` | Form 13F | Industry Performance Summary API | `/stable/institutional-ownership/industry-summary` |  | year, quarter |  |
| `financialEstimates` | Analyst | Financial Estimates API | `/stable/analyst-estimates` | symbol | period, page, limit |  |
| `ratingsSnapshot` | Analyst | Ratings Snapshot API | `/stable/ratings-snapshot` | symbol |  |  |
| `historicalRatings` | Analyst | Historical Ratings API | `/stable/ratings-historical` | symbol |  | date |
| `priceTargetSummary` | Analyst | Price Target Summary API | `/stable/price-target-summary` | symbol |  |  |
| `priceTargetConsensus` | Analyst | Price Target Consensus API | `/stable/price-target-consensus` | symbol |  |  |
| `stockGrades` | Analyst | Stock Grades API | `/stable/grades` | symbol |  |  |
| `historicalStockGrades` | Analyst | Historical Stock Grades API | `/stable/grades-historical` | symbol |  | date |
| `stockGradesSummary` | Analyst | Stock Grades Summary API | `/stable/grades-consensus` | symbol |  |  |
| `marketSectorPerformanceSnapshot` | Market Performance | Market Sector Performance Snapshot API | `/stable/sector-performance-snapshot` |  | date |  |
| `industryPerformanceSnapshot` | Market Performance | Industry Performance Snapshot API | `/stable/industry-performance-snapshot` |  | date |  |
| `historicalMarketSectorPerformance` | Market Performance | Historical Market Sector Performance API | `/stable/historical-sector-performance` |  | sector | date |
| `historicalIndustryPerformance` | Market Performance | Historical Industry Performance API | `/stable/historical-industry-performance` |  | industry | date |
| `sectorPeSnapshot` | Market Performance | Sector PE Snapshot API | `/stable/sector-pe-snapshot` |  | date |  |
| `industryPeSnapshot` | Market Performance | Industry PE Snapshot API | `/stable/industry-pe-snapshot` |  | date |  |
| `historicalSectorPe` | Market Performance | Historical Sector PE API | `/stable/historical-sector-pe` |  | sector | date |
| `historicalIndustryPe` | Market Performance | Historical Industry PE API | `/stable/historical-industry-pe` |  | industry | date |
| `biggestStockGainers` | Market Performance | Biggest Stock Gainers API | `/stable/biggest-gainers` |  |  |  |
| `biggestStockLosers` | Market Performance | Biggest Stock Losers API | `/stable/biggest-losers` |  |  |  |
| `topTradedStocks` | Market Performance | Top Traded Stocks API | `/stable/most-actives` |  |  | date |
| `simpleMovingAverage` | Technical Indicators | Simple Moving Average API | `/stable/technical-indicators/sma` | symbol | periodLength, timeframe |  |
| `exponentialMovingAverage` | Technical Indicators | Exponential Moving Average API | `/stable/technical-indicators/ema` | symbol | periodLength, timeframe |  |
| `weightedMovingAverage` | Technical Indicators | Weighted Moving Average API | `/stable/technical-indicators/wma` | symbol | periodLength, timeframe |  |
| `doubleExponentialMovingAverage` | Technical Indicators | Double Exponential Moving Average API | `/stable/technical-indicators/dema` | symbol | periodLength, timeframe |  |
| `tripleExponentialMovingAverage` | Technical Indicators | Triple Exponential Moving Average API | `/stable/technical-indicators/tema` | symbol | periodLength, timeframe |  |
| `relativeStrengthIndex` | Technical Indicators | Relative Strength Index API | `/stable/technical-indicators/rsi` | symbol | periodLength, timeframe |  |
| `standardDeviation` | Technical Indicators | Standard Deviation API | `/stable/technical-indicators/standarddeviation` | symbol | periodLength, timeframe |  |
| `williams` | Technical Indicators | Williams API | `/stable/technical-indicators/williams` | symbol | periodLength, timeframe |  |
| `averageDirectionalIndex` | Technical Indicators | Average Directional Index API | `/stable/technical-indicators/adx` | symbol | periodLength, timeframe |  |
| `etfFundHoldings` | Etf And Mutual Funds | ETF & Fund Holdings API | `/stable/etf/holdings` | symbol |  |  |
| `etfMutualFundInformation` | Etf And Mutual Funds | ETF & Mutual Fund Information API | `/stable/etf/info` | symbol |  |  |
| `etfFundCountryAllocation` | Etf And Mutual Funds | ETF & Fund Country Allocation API | `/stable/etf/country-weightings` | symbol |  |  |
| `etfAssetExposure` | Etf And Mutual Funds | ETF Asset Exposure API | `/stable/etf/asset-exposure` | symbol |  |  |
| `etfSectorWeighting` | Etf And Mutual Funds | ETF Sector Weighting API | `/stable/etf/sector-weightings` | symbol |  |  |
| `mutualFundEtfDisclosure` | Etf And Mutual Funds | Mutual Fund & ETF Disclosure API | `/stable/funds/disclosure-holders-latest` | symbol |  |  |
| `mutualFundDisclosures` | Etf And Mutual Funds | Mutual Fund Disclosures API | `/stable/funds/disclosure` | symbol | year, quarter |  |
| `mutualFundEtfDisclosureNameSearch` | Etf And Mutual Funds | Mutual Fund & ETF Disclosure Name Search API | `/stable/funds/disclosure-holders-search` | name |  |  |
| `fundEtfDisclosuresByDate` | Etf And Mutual Funds | Fund & ETF Disclosures by Date API | `/stable/funds/disclosure-dates` | symbol |  | date |
| `latest8KSecFilings` | Sec Filings | Latest 8-K SEC Filings API | `/stable/sec-filings-8k` |  | from, to, page, limit | filingDate |
| `latestSecFilings` | Sec Filings | Latest SEC Filings API | `/stable/sec-filings-financials` |  | from, to, page, limit | filingDate |
| `secFilingsByFormType` | Sec Filings | SEC Filings By Form Type API | `/stable/sec-filings-search/form-type` | formType | from, to, page, limit | filingDate |
| `secFilingsBySymbol` | Sec Filings | SEC Filings By Symbol API | `/stable/sec-filings-search/symbol` | symbol | from, to, page, limit | filingDate |
| `secFilingsByCik` | Sec Filings | SEC Filings By CIK API | `/stable/sec-filings-search/cik` | cik | from, to, page, limit | filingDate |
| `secFilingsByName` | Sec Filings | SEC Filings By Name API | `/stable/sec-filings-company-search/name` |  | company | filingDate |
| `secFilingsCompanySearchBySymbol` | Sec Filings | SEC Filings Company Search By Symbol API | `/stable/sec-filings-company-search/symbol` | symbol |  | filingDate |
| `secFilingsCompanySearchByCik` | Sec Filings | SEC Filings Company Search By CIK API | `/stable/sec-filings-company-search/cik` | cik |  | filingDate |
| `secCompanyFullProfile` | Sec Filings | SEC Company Full Profile API | `/stable/sec-profile` | symbol |  |  |
| `industryClassificationList` | Sec Filings | Industry Classification List API | `/stable/standard-industrial-classification-list` |  |  |  |
| `industryClassificationSearch` | Sec Filings | Industry Classification Search API | `/stable/industry-classification-search` |  |  |  |
| `allIndustryClassification` | Sec Filings | All Industry Classification API | `/stable/all-industry-classification` |  |  |  |
| `latestInsiderTrading` | Insider Trades | Latest Insider Trading API | `/stable/insider-trading/latest` |  | page, limit | date |
| `searchInsiderTrades` | Insider Trades | Search Insider Trades API | `/stable/insider-trading/search` |  | page, limit | date |
| `searchInsiderTradesByReportingName` | Insider Trades | Search Insider Trades by Reporting Name API | `/stable/insider-trading/reporting-name` | name |  | date |
| `allInsiderTransactionTypes` | Insider Trades | All Insider Transaction Types API | `/stable/insider-trading-transaction-type` |  |  |  |
| `insiderTradeStatistics` | Insider Trades | Insider Trade Statistics API | `/stable/insider-trading/statistics` | symbol |  | date |
| `acquisitionOwnership` | Insider Trades | Acquisition Ownership API | `/stable/acquisition-of-beneficial-ownership` | symbol |  |  |
| `stockMarketIndexesList` | Indexes | Stock Market Indexes List API | `/stable/index-list` |  |  |  |
| `indexQuote` | Indexes | Index Quote API | `/stable/quote` | symbol |  |  |
| `indexShortQuote` | Indexes | Index Short Quote API | `/stable/quote-short` | symbol |  |  |
| `allIndexQuotes` | Indexes | All Index Quotes API | `/stable/batch-index-quotes` |  |  |  |
| `historicalIndexLightChart` | Indexes | Historical Index Light Chart API | `/stable/historical-price-eod/light` | symbol |  | date |
| `historicalIndexFullChart` | Indexes | Historical Index Full Chart API | `/stable/historical-price-eod/full` | symbol |  | date |
| `get1MinuteIntervalIndexPrice` | Indexes | 1-Minute Interval Index Price API | `/stable/historical-chart/1min` | symbol |  | date |
| `get5MinuteIntervalIndexPrice` | Indexes | 5-Minute Interval Index Price API | `/stable/historical-chart/5min` | symbol |  | date |
| `get1HourIntervalIndexPrice` | Indexes | 1-Hour Interval Index Price API | `/stable/historical-chart/1hour` | symbol |  | date |
| `sP500Index` | Indexes | S&P 500 Index API | `/stable/sp500-constituent` |  |  |  |
| `nasdaqIndex` | Indexes | Nasdaq Index API | `/stable/nasdaq-constituent` |  |  |  |
| `dowJones` | Indexes | Dow Jones API | `/stable/dowjones-constituent` |  |  |  |
| `historicalSP500` | Indexes | Historical S&P 500 API | `/stable/historical-sp500-constituent` |  |  | date |
| `historicalNasdaq` | Indexes | Historical Nasdaq API | `/stable/historical-nasdaq-constituent` |  |  | date |
| `historicalDowJones` | Indexes | Historical Dow Jones API | `/stable/historical-dowjones-constituent` |  |  | date |
| `globalExchangeMarketHours` | Market Hours | Global Exchange Market Hours API | `/stable/exchange-market-hours` | exchange |  |  |
| `holidaysByExchange` | Market Hours | Holidays By Exchange API | `/stable/holidays-by-exchange` | exchange |  |  |
| `allExchangeMarketHours` | Market Hours | All Exchange Market Hours API | `/stable/all-exchange-market-hours` |  |  |  |
| `commoditiesList` | Commodity | Commodities List API | `/stable/commodities-list` |  |  |  |
| `commoditiesQuote` | Commodity | Commodities Quote API | `/stable/quote` | symbol |  |  |
| `commoditiesQuoteShort` | Commodity | Commodities Quote Short API | `/stable/quote-short` | symbol |  |  |
| `allCommoditiesQuotes` | Commodity | All Commodities Quotes API | `/stable/batch-commodity-quotes` |  |  |  |
| `lightChart` | Commodity | Light Chart API | `/stable/historical-price-eod/light` | symbol |  | date |
| `fullChart` | Commodity | Full Chart API | `/stable/historical-price-eod/full` | symbol |  | date |
| `get1MinuteIntervalCommoditiesChart` | Commodity | 1-Minute Interval Commodities Chart API | `/stable/historical-chart/1min` | symbol |  | date |
| `get5MinuteIntervalCommoditiesChart` | Commodity | 5-Minute Interval Commodities Chart API | `/stable/historical-chart/5min` | symbol |  | date |
| `get1HourIntervalCommoditiesChart` | Commodity | 1-Hour Interval Commodities Chart API | `/stable/historical-chart/1hour` | symbol |  | date |
| `dcfValuation` | Discounted Cash Flow | DCF Valuation API | `/stable/discounted-cash-flow` | symbol |  |  |
| `leveredDcf` | Discounted Cash Flow | Levered DCF API | `/stable/levered-discounted-cash-flow` | symbol |  |  |
| `customDcfAdvanced` | Discounted Cash Flow | Custom DCF Advanced API | `/stable/custom-discounted-cash-flow` | symbol |  |  |
| `customDcfLevered` | Discounted Cash Flow | Custom DCF Levered API | `/stable/custom-levered-discounted-cash-flow` | symbol |  |  |
| `forexCurrencyPairs` | Forex | Forex Currency Pairs API | `/stable/forex-list` |  |  |  |
| `forexQuote` | Forex | Forex Quote API | `/stable/quote` | symbol |  |  |
| `forexShortQuote` | Forex | Forex Short Quote API | `/stable/quote-short` | symbol |  |  |
| `batchForexQuotes` | Forex | Batch Forex Quotes API | `/stable/batch-forex-quotes` |  |  |  |
| `historicalForexLightChart` | Forex | Historical Forex Light Chart API | `/stable/historical-price-eod/light` | symbol |  | date |
| `historicalForexFullChart` | Forex | Historical Forex Full Chart API | `/stable/historical-price-eod/full` | symbol |  | date |
| `get1MinuteIntervalForexChart` | Forex | 1-Minute Interval Forex Chart API | `/stable/historical-chart/1min` | symbol |  | date |
| `get5MinuteIntervalForexChart` | Forex | 5-Minute Interval Forex Chart API | `/stable/historical-chart/5min` | symbol |  | date |
| `get1HourIntervalForexChart` | Forex | 1-Hour Interval Forex Chart API | `/stable/historical-chart/1hour` | symbol |  | date |
| `cryptocurrencyList` | Crypto | Cryptocurrency List API | `/stable/cryptocurrency-list` |  |  |  |
| `fullCryptocurrencyQuote` | Crypto | Full Cryptocurrency Quote API | `/stable/quote` | symbol |  |  |
| `cryptocurrencyQuoteShort` | Crypto | Cryptocurrency Quote Short API | `/stable/quote-short` | symbol |  |  |
| `allCryptocurrenciesQuotes` | Crypto | All Cryptocurrencies Quotes API | `/stable/batch-crypto-quotes` |  |  |  |
| `historicalCryptocurrencyLightChart` | Crypto | Historical Cryptocurrency Light Chart API | `/stable/historical-price-eod/light` | symbol |  | date |
| `historicalCryptocurrencyFullChart` | Crypto | Historical Cryptocurrency Full Chart API | `/stable/historical-price-eod/full` | symbol |  | date |
| `get1MinuteIntervalCryptocurrencyData` | Crypto | 1-Minute Interval Cryptocurrency Data API | `/stable/historical-chart/1min` | symbol |  | date |
| `get5MinuteIntervalCryptocurrencyData` | Crypto | 5-Minute Interval Cryptocurrency Data API | `/stable/historical-chart/5min` | symbol |  | date |
| `get1HourIntervalCryptocurrencyData` | Crypto | 1-Hour Interval Cryptocurrency Data API | `/stable/historical-chart/1hour` | symbol |  | date |
| `latestSenateFinancialDisclosures` | Senate | Latest Senate Financial Disclosures API | `/stable/senate-latest` |  | page, limit |  |
| `latestHouseFinancialDisclosures` | Senate | Latest House Financial Disclosures API | `/stable/house-latest` |  | page, limit |  |
| `senateTradingActivity` | Senate | Senate Trading Activity API | `/stable/senate-trades` | symbol |  | date |
| `senateTradesByName` | Senate | Senate Trades By Name API | `/stable/senate-trades-by-name` | name |  | date |
| `uSHouseTrades` | Senate | U.S. House Trades API | `/stable/house-trades` | symbol |  | date |
| `houseTradesByName` | Senate | House Trades By Name API | `/stable/house-trades-by-name` | name |  | date |
| `esgInvestmentSearch` | ESG | ESG Investment Search API | `/stable/esg-disclosures` | symbol |  |  |
| `esgRatings` | ESG | ESG Ratings API | `/stable/esg-ratings` | symbol |  |  |
| `esgBenchmarkComparison` | ESG | ESG Benchmark Comparison API | `/stable/esg-benchmark` |  |  |  |
| `cotReport` | Commitment Of Traders | COT Report API | `/stable/commitment-of-traders-report` |  |  | date |
| `cotAnalysisByDates` | Commitment Of Traders | COT Analysis By Dates API | `/stable/commitment-of-traders-analysis` |  |  | date |
| `cotReportList` | Commitment Of Traders | COT Report List API | `/stable/commitment-of-traders-list` |  |  | date |
| `latestCrowdfundingCampaigns` | Fundraisers | Latest Crowdfunding Campaigns API | `/stable/crowdfunding-offerings-latest` |  | page, limit |  |
| `crowdfundingCampaignSearch` | Fundraisers | Crowdfunding Campaign Search API | `/stable/crowdfunding-offerings-search` | name |  |  |
| `crowdfundingByCik` | Fundraisers | Crowdfunding By CIK API | `/stable/crowdfunding-offerings` | cik |  |  |
| `equityOfferingUpdates` | Fundraisers | Equity Offering Updates API | `/stable/fundraising-latest` |  | page, limit | date |
| `equityOfferingSearch` | Fundraisers | Equity Offering Search API | `/stable/fundraising-search` | name |  |  |
| `equityOfferingByCik` | Fundraisers | Equity Offering By CIK API | `/stable/fundraising` | cik |  |  |
| `companyProfileBulk` | Bulk | Company Profile Bulk API | `/stable/profile-bulk` |  | part |  |
| `stockRatingBulk` | Bulk | Stock Rating Bulk API | `/stable/rating-bulk` |  |  |  |
| `dcfValuationsBulk` | Bulk | DCF Valuations Bulk API | `/stable/dcf-bulk` |  |  |  |
| `financialScoresBulk` | Bulk | Financial Scores Bulk API | `/stable/scores-bulk` |  |  |  |
| `priceTargetSummaryBulk` | Bulk | Price Target Summary Bulk API | `/stable/price-target-summary-bulk` |  |  |  |
| `etfHolderBulk` | Bulk | ETF Holder Bulk API | `/stable/etf-holder-bulk` |  | part |  |
| `upgradesDowngradesConsensusBulk` | Bulk | Upgrades Downgrades Consensus Bulk API | `/stable/upgrades-downgrades-consensus-bulk` |  |  |  |
| `keyMetricsTtmBulk` | Bulk | Key Metrics TTM Bulk API | `/stable/key-metrics-ttm-bulk` |  |  |  |
| `ratiosTtmBulk` | Bulk | Ratios TTM Bulk API | `/stable/ratios-ttm-bulk` |  |  |  |
| `stockPeersBulk` | Bulk | Stock Peers Bulk API | `/stable/peers-bulk` |  |  |  |
| `earningsSurprisesBulk` | Bulk | Earnings Surprises Bulk API | `/stable/earnings-surprises-bulk` |  | year | date |
| `incomeStatementBulk` | Bulk | Income Statement Bulk API | `/stable/income-statement-bulk` |  | year, period |  |
| `incomeStatementGrowthBulk` | Bulk | Income Statement Growth Bulk API | `/stable/income-statement-growth-bulk` |  | year, period |  |
| `balanceSheetStatementBulk` | Bulk | Balance Sheet Statement Bulk API | `/stable/balance-sheet-statement-bulk` |  | year, period |  |
| `balanceSheetStatementGrowthBulk` | Bulk | Balance Sheet Statement Growth Bulk API | `/stable/balance-sheet-statement-growth-bulk` |  | year, period |  |
| `cashFlowStatementBulk` | Bulk | Cash Flow Statement Bulk API | `/stable/cash-flow-statement-bulk` |  | year, period |  |
| `cashFlowStatementGrowthBulk` | Bulk | Cash Flow Statement Growth Bulk API | `/stable/cash-flow-statement-growth-bulk` |  | year, period |  |
| `eodBulk` | Bulk | Eod Bulk API | `/stable/eod-bulk` |  | date | date |
