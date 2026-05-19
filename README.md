# matlab-fmp

MATLAB toolbox for working with [Financial Modeling Prep](https://site.financialmodelingprep.com/developer/docs) data.

`matlab-fmp` targets MATLAB R2024b and newer. It provides a `fmp.Client` object, secure API key lookup, generated wrappers for the FMP stable REST API, and table/timetable-first outputs.

## Install for development

Clone the repository, open MATLAB, and add the repo root to the path:

```matlab
addpath("D:\matlab\fmp")
```

## API keys

The client resolves credentials in this order:

1. Explicit constructor value: `fmp.Client(ApiKey="...")`
2. Environment variable: `FMP_API_KEY`
3. Local `.env` file entry: `FMP_API_KEY=...`
4. MATLAB vault secret: `FMP_API_KEY`

`.env` is ignored by Git. Use `.env.example` as the checked-in template.

To store a key in the MATLAB vault, run:

```matlab
fmp.setApiKey
```

MATLAB prompts for the secret value without writing it to the repository. Retrieve or remove the stored secret with:

```matlab
key = fmp.getApiKey;
fmp.removeApiKey;
```

## Basic usage

```matlab
client = fmp.Client;

quote = client.quote(symbol="AAPL");
prices = client.historicalPrices(symbol="AAPL", from=datetime(2024,1,1));
income = client.incomeStatement(symbol="AAPL", period="annual");

raw = client.endpoint("/stable/profile", symbol="MSFT", OutputFormat="raw");
catalog = client.endpoints;
```

By default, tabular responses are returned as `table`. Responses with a recognizable date or timestamp field are returned as `timetable`. Use `OutputFormat="raw"` to receive decoded JSON-compatible MATLAB structs.

## Endpoint wrappers

The generated catalog lives in `resources/endpoints.json`. Wrapper methods under `+fmp/@Client` are generated from the current FMP docs:

```matlab
tools.updateEndpointCatalog
```

The generator refreshes the catalog, generated client methods, and `docs/endpoints.md`.

## Tests

Unit tests use mocked HTTP by default and do not require an API key:

```matlab
results = runtests("tests/clientTest.m");
```

Optional live tests run only when `FMP_API_KEY` is available:

```matlab
results = runtests("tests/liveClientTest.m");
```

## Package

Build a MATLAB toolbox artifact with:

```matlab
buildtool package
```

The package target writes `dist/matlab-fmp.mltbx`.
