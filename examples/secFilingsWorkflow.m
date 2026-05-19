%% SEC Filings Workflow
% Search recent SEC filings and retrieve filing dates.

client = fmp.Client;
symbol = "AAPL";

filings = client.secFilingsBySymbol(symbol=symbol, page=0, limit=20);
dates = client.financialReportsDates(symbol=symbol);

disp(filings(:, ["symbol", "cik", "formType", "filingDate"]))
disp(dates)
