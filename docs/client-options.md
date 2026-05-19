# Client Options

`fmp.Client` centralizes API credentials, retry behavior, output conversion, and endpoint parameter validation.

## Construction

```matlab
client = fmp.Client( ...
    OutputFormat="auto", ...
    Timeout=seconds(30), ...
    MaxRetries=2, ...
    RetryDelay=seconds(1), ...
    ParameterValidation="required");
```

## Parameter Validation

`ParameterValidation` controls how generated endpoint metadata is used before a request is sent.

| Mode | Behavior |
| --- | --- |
| `required` | Default. Errors when catalog-required parameters are missing. Allows undocumented query parameters. |
| `strict` | Errors when required parameters are missing or unknown parameters are supplied. |
| `none` | Sends parameters without catalog validation. |

Use `strict` when developing reusable code and `required` when experimenting with newly added FMP query parameters.

## Pagination

Use `allPages` for endpoints that accept `page` and `limit` query parameters:

```matlab
companies = client.allPages( ...
    "stockScreener", ...
    marketCapMoreThan=10e9, ...
    PageSize=100, ...
    MaxPages=5);
```

`allPages` starts at page `0`, stops when an empty page is returned, and also stops at `MaxPages`. Set `StartPage` when resuming a longer retrieval.

## Retries

The client retries transient failures identified as rate limits, timeouts, or HTTP 5xx responses. Backoff starts at `RetryDelay` and doubles for each retry.

```matlab
client = fmp.Client(MaxRetries=4, RetryDelay=seconds(2));
```

Non-transient API and validation errors are not retried.
