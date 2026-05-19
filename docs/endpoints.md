# Generated FMP Endpoint Catalog

Generated from https://site.financialmodelingprep.com/developer/docs.

| Method | Title | Path | Example parameters |
| --- | --- | --- | --- |
| `stockSymbolSearch` | Stock Symbol Search API | `/stable/search-symbol` | query |
| `companyNameSearch` | Company Name Search API | `/stable/search-name` | query |
| `cik` | CIK API | `/stable/search-cik` | cik |
| `cusip` | CUSIP API | `/stable/search-cusip` | cusip |
| `isin` | ISIN API | `/stable/search-isin` | isin |
| `stockScreener` | Stock Screener API | `/stable/company-screener` |  |
| `exchangeVariants` | Exchange Variants API | `/stable/search-exchange-variants` | symbol |
| `companySymbolsList` | Company Symbols List API | `/stable/stock-list` |  |
| `financialStatementSymbolsList` | Financial Statement Symbols List API | `/stable/financial-statement-symbol-list` |  |
| `cikList` | CIK List API | `/stable/cik-list` | page, limit |
| `symbolChangesList` | Symbol Changes List API | `/stable/symbol-change` |  |
| `etfSymbolSearch` | ETF Symbol Search API | `/stable/etf-list` |  |
| `activelyTradingList` | Actively Trading List API | `/stable/actively-trading-list` |  |
| `earningsTranscriptList` | Earnings Transcript List API | `/stable/earnings-transcript-list` |  |
| `availableExchanges` | Available Exchanges API | `/stable/available-exchanges` |  |
| `availableSectors` | Available Sectors API | `/stable/available-sectors` |  |
| `availableIndustries` | Available Industries API | `/stable/available-industries` |  |
| `availableCountries` | Available Countries API | `/stable/available-countries` |  |
| `companyProfileData` | Company Profile Data API | `/stable/profile` | symbol |
| `companyProfileByCik` | Company Profile by CIK API | `/stable/profile-cik` | cik |
| `companyNotes` | Company Notes API | `/stable/company-notes` | symbol |
| `stockPeerComparison` | Stock Peer Comparison API | `/stable/stock-peers` | symbol |
| `delistedCompanies` | Delisted Companies API | `/stable/delisted-companies` | page, limit |
| `companyEmployeeCount` | Company Employee Count API | `/stable/employee-count` | symbol |
| `companyHistoricalEmployeeCount` | Company Historical Employee Count API | `/stable/historical-employee-count` | symbol |
| `companyMarketCap` | Company Market Cap API | `/stable/market-capitalization` | symbol |
| `batchMarketCap` | Batch Market Cap API | `/stable/market-capitalization-batch` | symbols |
| `historicalMarketCap` | Historical Market Cap API | `/stable/historical-market-capitalization` | symbol |
| `companyShareFloatLiquidity` | Company Share Float & Liquidity API | `/stable/shares-float` | symbol |
| `allSharesFloat` | All Shares Float API | `/stable/shares-float-all` | page, limit |
| `latestMergersAcquisitions` | Latest Mergers & Acquisitions API | `/stable/mergers-acquisitions-latest` | page, limit |
| `searchMergersAcquisitions` | Search Mergers & Acquisitions API | `/stable/mergers-acquisitions-search` | name |
| `companyExecutives` | Company Executives API | `/stable/key-executives` | symbol |
| `executiveCompensation` | Executive Compensation API | `/stable/governance-executive-compensation` | symbol |
| `executiveCompensationBenchmark` | Executive Compensation Benchmark API | `/stable/executive-compensation-benchmark` |  |
| `stockQuote` | Stock Quote API | `/stable/quote` | symbol |
| `stockQuoteShort` | Stock Quote Short API | `/stable/quote-short` | symbol |
| `aftermarketTrade` | Aftermarket Trade API | `/stable/aftermarket-trade` | symbol |
| `aftermarketQuote` | Aftermarket Quote API | `/stable/aftermarket-quote` | symbol |
| `stockPriceChange` | Stock Price Change API | `/stable/stock-price-change` | symbol |
| `stockBatchQuote` | Stock Batch Quote API | `/stable/batch-quote` | symbols |
| `stockBatchQuoteShort` | Stock Batch Quote Short API | `/stable/batch-quote-short` | symbols |
| `batchAftermarketTrade` | Batch Aftermarket Trade API | `/stable/batch-aftermarket-trade` | symbols |
| `batchAftermarketQuote` | Batch Aftermarket Quote API | `/stable/batch-aftermarket-quote` | symbols |
| `exchangeStockQuotes` | Exchange Stock Quotes API | `/stable/batch-exchange-quote` | exchange |
| `mutualFundPriceQuotes` | Mutual Fund Price Quotes API | `/stable/batch-mutualfund-quotes` |  |
| `etfPriceQuotes` | ETF Price Quotes API | `/stable/batch-etf-quotes` |  |
| `fullCommoditiesQuotes` | Full Commodities Quotes API | `/stable/batch-commodity-quotes` |  |
| `fullCryptocurrencyQuotes` | Full Cryptocurrency Quotes API | `/stable/batch-crypto-quotes` |  |
| `fullForexQuote` | Full Forex Quote API | `/stable/batch-forex-quotes` |  |
| `fullIndexQuotes` | Full Index Quotes API | `/stable/batch-index-quotes` |  |
| `incomeStatement` | Income Statement API | `/stable/income-statement` | symbol |
| `balanceSheetStatement` | Balance Sheet Statement API | `/stable/balance-sheet-statement` | symbol |
| `cashFlowStatement` | Cash Flow Statement API | `/stable/cash-flow-statement` | symbol |
| `latestFinancialStatements` | Latest Financial Statements API | `/stable/latest-financial-statements` | page, limit |
| `incomeStatementsTtm` | Income Statements TTM API | `/stable/income-statement-ttm` | symbol |
| `balanceSheetStatementsTtm` | Balance Sheet Statements TTM API | `/stable/balance-sheet-statement-ttm` | symbol |
| `cashflowStatementsTtm` | Cashflow Statements TTM API | `/stable/cash-flow-statement-ttm` | symbol |
| `keyMetrics` | Key Metrics API | `/stable/key-metrics` | symbol |
| `financialRatios` | Financial Ratios API | `/stable/ratios` | symbol |
| `keyMetricsTtm` | Key Metrics TTM API | `/stable/key-metrics-ttm` | symbol |
| `financialRatiosTtm` | Financial Ratios TTM API | `/stable/ratios-ttm` | symbol |
| `financialScores` | Financial Scores API | `/stable/financial-scores` | symbol |
| `ownerEarnings` | Owner Earnings API | `/stable/owner-earnings` | symbol |
| `enterpriseValues` | Enterprise Values API | `/stable/enterprise-values` | symbol |
| `incomeStatementGrowth` | Income Statement Growth API | `/stable/income-statement-growth` | symbol |
| `balanceSheetStatementGrowth` | Balance Sheet Statement Growth API | `/stable/balance-sheet-statement-growth` | symbol |
| `cashflowStatementGrowth` | Cashflow Statement Growth API | `/stable/cash-flow-statement-growth` | symbol |
| `financialStatementGrowth` | Financial Statement Growth API | `/stable/financial-growth` | symbol |
| `financialReportsDates` | Financial Reports Dates API | `/stable/financial-reports-dates` | symbol |
| `financialReportsForm10KJson` | Financial Reports Form 10-K JSON API | `/stable/financial-reports-json` | symbol, year, period |
| `financialReportsForm10KXlsx` | Financial Reports Form 10-K XLSX API | `/stable/financial-reports-xlsx` | symbol, year, period |
| `revenueProductSegmentation` | Revenue Product Segmentation API | `/stable/revenue-product-segmentation` | symbol |
| `revenueGeographicSegments` | Revenue Geographic Segments API | `/stable/revenue-geographic-segmentation` | symbol |
| `asReportedIncomeStatements` | As Reported Income Statements API | `/stable/income-statement-as-reported` | symbol |
| `asReportedBalanceStatements` | As Reported Balance Statements API | `/stable/balance-sheet-statement-as-reported` | symbol |
| `asReportedCashflowStatements` | As Reported Cashflow Statements API | `/stable/cash-flow-statement-as-reported` | symbol |
| `asReportedFinancialStatements` | As Reported Financial Statements API | `/stable/financial-statement-full-as-reported` | symbol |
| `stockChartLight` | Stock Chart Light API | `/stable/historical-price-eod/light` | symbol |
| `stockPriceAndVolumeData` | Stock Price and Volume Data API | `/stable/historical-price-eod/full` | symbol |
| `unadjustedStockPrice` | Unadjusted Stock Price API | `/stable/historical-price-eod/non-split-adjusted` | symbol |
| `dividendAdjustedPriceChart` | Dividend Adjusted Price Chart API | `/stable/historical-price-eod/dividend-adjusted` | symbol |
| `get1MinIntervalStockChart` | 1 Min Interval Stock Chart API | `/stable/historical-chart/1min` | symbol |
| `get5MinIntervalStockChart` | 5 Min Interval Stock Chart API | `/stable/historical-chart/5min` | symbol |
| `get15MinIntervalStockChart` | 15 Min Interval Stock Chart API | `/stable/historical-chart/15min` | symbol |
| `get30MinIntervalStockChart` | 30 Min Interval Stock Chart API | `/stable/historical-chart/30min` | symbol |
| `get1HourIntervalStockChart` | 1 Hour Interval Stock Chart API | `/stable/historical-chart/1hour` | symbol |
| `get4HourIntervalStockChart` | 4 Hour Interval Stock Chart API | `/stable/historical-chart/4hour` | symbol |
| `treasuryRates` | Treasury Rates API | `/stable/treasury-rates` |  |
| `economicsIndicators` | Economics Indicators API | `/stable/economic-indicators` | name |
| `economicDataReleasesCalendar` | Economic Data Releases Calendar API | `/stable/economic-calendar` |  |
| `marketRiskPremium` | Market Risk Premium API | `/stable/market-risk-premium` |  |
| `dividendsCompany` | Dividends Company API | `/stable/dividends` | symbol |
| `dividendsCalendar` | Dividends Calendar API | `/stable/dividends-calendar` |  |
| `earningsReport` | Earnings Report API | `/stable/earnings` | symbol |
| `earningsCalendar` | Earnings Calendar API | `/stable/earnings-calendar` |  |
| `iposCalendar` | IPOs Calendar API | `/stable/ipos-calendar` |  |
| `iposDisclosure` | IPOs Disclosure API | `/stable/ipos-disclosure` |  |
| `iposProspectus` | IPOs Prospectus API | `/stable/ipos-prospectus` |  |
| `stockSplitDetails` | Stock Split Details API | `/stable/splits` | symbol |
| `stockSplitsCalendar` | Stock Splits Calendar API | `/stable/splits-calendar` |  |
| `latestEarningTranscripts` | Latest Earning Transcripts API | `/stable/earning-call-transcript-latest` |  |
| `earningsTranscript` | Earnings Transcript API | `/stable/earning-call-transcript` | symbol, year, quarter |
| `transcriptsDatesBySymbol` | Transcripts Dates By Symbol API | `/stable/earning-call-transcript-dates` | symbol |
| `availableTranscriptSymbols` | Available Transcript Symbols API | `/stable/earnings-transcript-list` |  |
| `fmpArticles` | FMP Articles API | `/stable/fmp-articles` | page, limit |
| `generalNews` | General News API | `/stable/news/general-latest` | page, limit |
| `pressReleases` | Press Releases API | `/stable/news/press-releases-latest` | page, limit |
| `stockNews` | Stock News API | `/stable/news/stock-latest` | page, limit |
| `cryptoNews` | Crypto News API | `/stable/news/crypto-latest` | page, limit |
| `forexNews` | Forex News API | `/stable/news/forex-latest` | page, limit |
| `searchPressReleases` | Search Press Releases API | `/stable/news/press-releases` | symbols |
| `searchStockNews` | Search Stock News API | `/stable/news/stock` | symbols |
| `searchCryptoNews` | Search Crypto News API | `/stable/news/crypto` | symbols |
| `searchForexNews` | Search Forex News API | `/stable/news/forex` | symbols |
| `institutionalOwnershipFilings` | Institutional Ownership Filings API | `/stable/institutional-ownership/latest` | page, limit |
| `filingsExtract` | Filings Extract API | `/stable/institutional-ownership/extract` | cik, year, quarter |
| `form13fFilingsDates` | Form 13F Filings Dates API | `/stable/institutional-ownership/dates` | cik |
| `filingsExtractWithAnalyticsByHolder` | Filings Extract With Analytics By Holder API | `/stable/institutional-ownership/extract-analytics/holder` | symbol, year, quarter, page, limit |
| `holderPerformanceSummary` | Holder Performance Summary API | `/stable/institutional-ownership/holder-performance-summary` | cik, page |
| `holdersIndustryBreakdown` | Holders Industry Breakdown API | `/stable/institutional-ownership/holder-industry-breakdown` | cik, year, quarter |
| `positionsSummary` | Positions Summary API | `/stable/institutional-ownership/symbol-positions-summary` | symbol, year, quarter |
| `industryPerformanceSummary` | Industry Performance Summary API | `/stable/institutional-ownership/industry-summary` | year, quarter |
| `financialEstimates` | Financial Estimates API | `/stable/analyst-estimates` | symbol, period, page, limit |
| `ratingsSnapshot` | Ratings Snapshot API | `/stable/ratings-snapshot` | symbol |
| `historicalRatings` | Historical Ratings API | `/stable/ratings-historical` | symbol |
| `priceTargetSummary` | Price Target Summary API | `/stable/price-target-summary` | symbol |
| `priceTargetConsensus` | Price Target Consensus API | `/stable/price-target-consensus` | symbol |
| `stockGrades` | Stock Grades API | `/stable/grades` | symbol |
| `historicalStockGrades` | Historical Stock Grades API | `/stable/grades-historical` | symbol |
| `stockGradesSummary` | Stock Grades Summary API | `/stable/grades-consensus` | symbol |
| `marketSectorPerformanceSnapshot` | Market Sector Performance Snapshot API | `/stable/sector-performance-snapshot` | date |
| `industryPerformanceSnapshot` | Industry Performance Snapshot API | `/stable/industry-performance-snapshot` | date |
| `historicalMarketSectorPerformance` | Historical Market Sector Performance API | `/stable/historical-sector-performance` | sector |
| `historicalIndustryPerformance` | Historical Industry Performance API | `/stable/historical-industry-performance` | industry |
| `sectorPeSnapshot` | Sector PE Snapshot API | `/stable/sector-pe-snapshot` | date |
| `industryPeSnapshot` | Industry PE Snapshot API | `/stable/industry-pe-snapshot` | date |
| `historicalSectorPe` | Historical Sector PE API | `/stable/historical-sector-pe` | sector |
| `historicalIndustryPe` | Historical Industry PE API | `/stable/historical-industry-pe` | industry |
| `biggestStockGainers` | Biggest Stock Gainers API | `/stable/biggest-gainers` |  |
| `biggestStockLosers` | Biggest Stock Losers API | `/stable/biggest-losers` |  |
| `topTradedStocks` | Top Traded Stocks API | `/stable/most-actives` |  |
| `simpleMovingAverage` | Simple Moving Average API | `/stable/technical-indicators/sma` | symbol, periodLength, timeframe |
| `exponentialMovingAverage` | Exponential Moving Average API | `/stable/technical-indicators/ema` | symbol, periodLength, timeframe |
| `weightedMovingAverage` | Weighted Moving Average API | `/stable/technical-indicators/wma` | symbol, periodLength, timeframe |
| `doubleExponentialMovingAverage` | Double Exponential Moving Average API | `/stable/technical-indicators/dema` | symbol, periodLength, timeframe |
| `tripleExponentialMovingAverage` | Triple Exponential Moving Average API | `/stable/technical-indicators/tema` | symbol, periodLength, timeframe |
| `relativeStrengthIndex` | Relative Strength Index API | `/stable/technical-indicators/rsi` | symbol, periodLength, timeframe |
| `standardDeviation` | Standard Deviation API | `/stable/technical-indicators/standarddeviation` | symbol, periodLength, timeframe |
| `williams` | Williams API | `/stable/technical-indicators/williams` | symbol, periodLength, timeframe |
| `averageDirectionalIndex` | Average Directional Index API | `/stable/technical-indicators/adx` | symbol, periodLength, timeframe |
| `etfFundHoldings` | ETF & Fund Holdings API | `/stable/etf/holdings` | symbol |
| `etfMutualFundInformation` | ETF & Mutual Fund Information API | `/stable/etf/info` | symbol |
| `etfFundCountryAllocation` | ETF & Fund Country Allocation API | `/stable/etf/country-weightings` | symbol |
| `etfAssetExposure` | ETF Asset Exposure API | `/stable/etf/asset-exposure` | symbol |
| `etfSectorWeighting` | ETF Sector Weighting API | `/stable/etf/sector-weightings` | symbol |
| `mutualFundEtfDisclosure` | Mutual Fund & ETF Disclosure API | `/stable/funds/disclosure-holders-latest` | symbol |
| `mutualFundDisclosures` | Mutual Fund Disclosures API | `/stable/funds/disclosure` | symbol, year, quarter |
| `mutualFundEtfDisclosureNameSearch` | Mutual Fund & ETF Disclosure Name Search API | `/stable/funds/disclosure-holders-search` | name |
| `fundEtfDisclosuresByDate` | Fund & ETF Disclosures by Date API | `/stable/funds/disclosure-dates` | symbol |
| `latest8KSecFilings` | Latest 8-K SEC Filings API | `/stable/sec-filings-8k` | from, to, page, limit |
| `latestSecFilings` | Latest SEC Filings API | `/stable/sec-filings-financials` | from, to, page, limit |
| `secFilingsByFormType` | SEC Filings By Form Type API | `/stable/sec-filings-search/form-type` | formType, from, to, page, limit |
| `secFilingsBySymbol` | SEC Filings By Symbol API | `/stable/sec-filings-search/symbol` | symbol, from, to, page, limit |
| `secFilingsByCik` | SEC Filings By CIK API | `/stable/sec-filings-search/cik` | cik, from, to, page, limit |
| `secFilingsByName` | SEC Filings By Name API | `/stable/sec-filings-company-search/name` | company |
| `secFilingsCompanySearchBySymbol` | SEC Filings Company Search By Symbol API | `/stable/sec-filings-company-search/symbol` | symbol |
| `secFilingsCompanySearchByCik` | SEC Filings Company Search By CIK API | `/stable/sec-filings-company-search/cik` | cik |
| `secCompanyFullProfile` | SEC Company Full Profile API | `/stable/sec-profile` | symbol |
| `industryClassificationList` | Industry Classification List API | `/stable/standard-industrial-classification-list` |  |
| `industryClassificationSearch` | Industry Classification Search API | `/stable/industry-classification-search` |  |
| `allIndustryClassification` | All Industry Classification API | `/stable/all-industry-classification` |  |
| `latestInsiderTrading` | Latest Insider Trading API | `/stable/insider-trading/latest` | page, limit |
| `searchInsiderTrades` | Search Insider Trades API | `/stable/insider-trading/search` | page, limit |
| `searchInsiderTradesByReportingName` | Search Insider Trades by Reporting Name API | `/stable/insider-trading/reporting-name` | name |
| `allInsiderTransactionTypes` | All Insider Transaction Types API | `/stable/insider-trading-transaction-type` |  |
| `insiderTradeStatistics` | Insider Trade Statistics API | `/stable/insider-trading/statistics` | symbol |
| `acquisitionOwnership` | Acquisition Ownership API | `/stable/acquisition-of-beneficial-ownership` | symbol |
| `stockMarketIndexesList` | Stock Market Indexes List API | `/stable/index-list` |  |
| `indexQuote` | Index Quote API | `/stable/quote` | symbol |
| `indexShortQuote` | Index Short Quote API | `/stable/quote-short` | symbol |
| `allIndexQuotes` | All Index Quotes API | `/stable/batch-index-quotes` |  |
| `historicalIndexLightChart` | Historical Index Light Chart API | `/stable/historical-price-eod/light` | symbol |
| `historicalIndexFullChart` | Historical Index Full Chart API | `/stable/historical-price-eod/full` | symbol |
| `get1MinuteIntervalIndexPrice` | 1-Minute Interval Index Price API | `/stable/historical-chart/1min` | symbol |
| `get5MinuteIntervalIndexPrice` | 5-Minute Interval Index Price API | `/stable/historical-chart/5min` | symbol |
| `get1HourIntervalIndexPrice` | 1-Hour Interval Index Price API | `/stable/historical-chart/1hour` | symbol |
| `sP500Index` | S&P 500 Index API | `/stable/sp500-constituent` |  |
| `nasdaqIndex` | Nasdaq Index API | `/stable/nasdaq-constituent` |  |
| `dowJones` | Dow Jones API | `/stable/dowjones-constituent` |  |
| `historicalSP500` | Historical S&P 500 API | `/stable/historical-sp500-constituent` |  |
| `historicalNasdaq` | Historical Nasdaq API | `/stable/historical-nasdaq-constituent` |  |
| `historicalDowJones` | Historical Dow Jones API | `/stable/historical-dowjones-constituent` |  |
| `globalExchangeMarketHours` | Global Exchange Market Hours API | `/stable/exchange-market-hours` | exchange |
| `holidaysByExchange` | Holidays By Exchange API | `/stable/holidays-by-exchange` | exchange |
| `allExchangeMarketHours` | All Exchange Market Hours API | `/stable/all-exchange-market-hours` |  |
| `commoditiesList` | Commodities List API | `/stable/commodities-list` |  |
| `commoditiesQuote` | Commodities Quote API | `/stable/quote` | symbol |
| `commoditiesQuoteShort` | Commodities Quote Short API | `/stable/quote-short` | symbol |
| `allCommoditiesQuotes` | All Commodities Quotes API | `/stable/batch-commodity-quotes` |  |
| `lightChart` | Light Chart API | `/stable/historical-price-eod/light` | symbol |
| `fullChart` | Full Chart API | `/stable/historical-price-eod/full` | symbol |
| `get1MinuteIntervalCommoditiesChart` | 1-Minute Interval Commodities Chart API | `/stable/historical-chart/1min` | symbol |
| `get5MinuteIntervalCommoditiesChart` | 5-Minute Interval Commodities Chart API | `/stable/historical-chart/5min` | symbol |
| `get1HourIntervalCommoditiesChart` | 1-Hour Interval Commodities Chart API | `/stable/historical-chart/1hour` | symbol |
| `dcfValuation` | DCF Valuation API | `/stable/discounted-cash-flow` | symbol |
| `leveredDcf` | Levered DCF API | `/stable/levered-discounted-cash-flow` | symbol |
| `customDcfAdvanced` | Custom DCF Advanced API | `/stable/custom-discounted-cash-flow` | symbol |
| `customDcfLevered` | Custom DCF Levered API | `/stable/custom-levered-discounted-cash-flow` | symbol |
| `forexCurrencyPairs` | Forex Currency Pairs API | `/stable/forex-list` |  |
| `forexQuote` | Forex Quote API | `/stable/quote` | symbol |
| `forexShortQuote` | Forex Short Quote API | `/stable/quote-short` | symbol |
| `batchForexQuotes` | Batch Forex Quotes API | `/stable/batch-forex-quotes` |  |
| `historicalForexLightChart` | Historical Forex Light Chart API | `/stable/historical-price-eod/light` | symbol |
| `historicalForexFullChart` | Historical Forex Full Chart API | `/stable/historical-price-eod/full` | symbol |
| `get1MinuteIntervalForexChart` | 1-Minute Interval Forex Chart API | `/stable/historical-chart/1min` | symbol |
| `get5MinuteIntervalForexChart` | 5-Minute Interval Forex Chart API | `/stable/historical-chart/5min` | symbol |
| `get1HourIntervalForexChart` | 1-Hour Interval Forex Chart API | `/stable/historical-chart/1hour` | symbol |
| `cryptocurrencyList` | Cryptocurrency List API | `/stable/cryptocurrency-list` |  |
| `fullCryptocurrencyQuote` | Full Cryptocurrency Quote API | `/stable/quote` | symbol |
| `cryptocurrencyQuoteShort` | Cryptocurrency Quote Short API | `/stable/quote-short` | symbol |
| `allCryptocurrenciesQuotes` | All Cryptocurrencies Quotes API | `/stable/batch-crypto-quotes` |  |
| `historicalCryptocurrencyLightChart` | Historical Cryptocurrency Light Chart API | `/stable/historical-price-eod/light` | symbol |
| `historicalCryptocurrencyFullChart` | Historical Cryptocurrency Full Chart API | `/stable/historical-price-eod/full` | symbol |
| `get1MinuteIntervalCryptocurrencyData` | 1-Minute Interval Cryptocurrency Data API | `/stable/historical-chart/1min` | symbol |
| `get5MinuteIntervalCryptocurrencyData` | 5-Minute Interval Cryptocurrency Data API | `/stable/historical-chart/5min` | symbol |
| `get1HourIntervalCryptocurrencyData` | 1-Hour Interval Cryptocurrency Data API | `/stable/historical-chart/1hour` | symbol |
| `latestSenateFinancialDisclosures` | Latest Senate Financial Disclosures API | `/stable/senate-latest` | page, limit |
| `latestHouseFinancialDisclosures` | Latest House Financial Disclosures API | `/stable/house-latest` | page, limit |
| `senateTradingActivity` | Senate Trading Activity API | `/stable/senate-trades` | symbol |
| `senateTradesByName` | Senate Trades By Name API | `/stable/senate-trades-by-name` | name |
| `uSHouseTrades` | U.S. House Trades API | `/stable/house-trades` | symbol |
| `houseTradesByName` | House Trades By Name API | `/stable/house-trades-by-name` | name |
| `esgInvestmentSearch` | ESG Investment Search API | `/stable/esg-disclosures` | symbol |
| `esgRatings` | ESG Ratings API | `/stable/esg-ratings` | symbol |
| `esgBenchmarkComparison` | ESG Benchmark Comparison API | `/stable/esg-benchmark` |  |
| `cotReport` | COT Report API | `/stable/commitment-of-traders-report` |  |
| `cotAnalysisByDates` | COT Analysis By Dates API | `/stable/commitment-of-traders-analysis` |  |
| `cotReportList` | COT Report List API | `/stable/commitment-of-traders-list` |  |
| `latestCrowdfundingCampaigns` | Latest Crowdfunding Campaigns API | `/stable/crowdfunding-offerings-latest` | page, limit |
| `crowdfundingCampaignSearch` | Crowdfunding Campaign Search API | `/stable/crowdfunding-offerings-search` | name |
| `crowdfundingByCik` | Crowdfunding By CIK API | `/stable/crowdfunding-offerings` | cik |
| `equityOfferingUpdates` | Equity Offering Updates API | `/stable/fundraising-latest` | page, limit |
| `equityOfferingSearch` | Equity Offering Search API | `/stable/fundraising-search` | name |
| `equityOfferingByCik` | Equity Offering By CIK API | `/stable/fundraising` | cik |
| `companyProfileBulk` | Company Profile Bulk API | `/stable/profile-bulk` | part |
| `stockRatingBulk` | Stock Rating Bulk API | `/stable/rating-bulk` |  |
| `dcfValuationsBulk` | DCF Valuations Bulk API | `/stable/dcf-bulk` |  |
| `financialScoresBulk` | Financial Scores Bulk API | `/stable/scores-bulk` |  |
| `priceTargetSummaryBulk` | Price Target Summary Bulk API | `/stable/price-target-summary-bulk` |  |
| `etfHolderBulk` | ETF Holder Bulk API | `/stable/etf-holder-bulk` | part |
| `upgradesDowngradesConsensusBulk` | Upgrades Downgrades Consensus Bulk API | `/stable/upgrades-downgrades-consensus-bulk` |  |
| `keyMetricsTtmBulk` | Key Metrics TTM Bulk API | `/stable/key-metrics-ttm-bulk` |  |
| `ratiosTtmBulk` | Ratios TTM Bulk API | `/stable/ratios-ttm-bulk` |  |
| `stockPeersBulk` | Stock Peers Bulk API | `/stable/peers-bulk` |  |
| `earningsSurprisesBulk` | Earnings Surprises Bulk API | `/stable/earnings-surprises-bulk` | year |
| `incomeStatementBulk` | Income Statement Bulk API | `/stable/income-statement-bulk` | year, period |
| `incomeStatementGrowthBulk` | Income Statement Growth Bulk API | `/stable/income-statement-growth-bulk` | year, period |
| `balanceSheetStatementBulk` | Balance Sheet Statement Bulk API | `/stable/balance-sheet-statement-bulk` | year, period |
| `balanceSheetStatementGrowthBulk` | Balance Sheet Statement Growth Bulk API | `/stable/balance-sheet-statement-growth-bulk` | year, period |
| `cashFlowStatementBulk` | Cash Flow Statement Bulk API | `/stable/cash-flow-statement-bulk` | year, period |
| `cashFlowStatementGrowthBulk` | Cash Flow Statement Growth Bulk API | `/stable/cash-flow-statement-growth-bulk` | year, period |
| `eodBulk` | Eod Bulk API | `/stable/eod-bulk` | date |
