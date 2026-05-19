# MATLAB File Exchange Readiness

This repository is prepared for MATLAB File Exchange submission. The final submission is intentionally manual because it requires a MathWorks account browser flow.

## Suggested Listing

Title: `matlab-fmp`

Summary: MATLAB toolbox for Financial Modeling Prep data.

Description:

`matlab-fmp` provides an object-oriented MATLAB client for the Financial Modeling Prep stable REST API. It includes secure API key resolution, generated wrappers for the endpoint catalog, table and timetable outputs, pagination helpers, retry handling, endpoint metadata inspection, higher-level finance workflows, examples, tests, and GitHub Actions packaging.

Tags:

- financial-data
- finance
- matlab
- toolbox
- api-client
- financialmodelingprep

## Release Checklist

- GitHub release contains `matlab-fmp.mltbx`.
- Toolbox project version matches the GitHub tag.
- `buildtool package` passes locally and in CI.
- Live smoke workflow passes with `FMP_API_KEY`.
- README points users to the latest release asset.
- `.env` and generated `dist/` artifacts are ignored by Git.
- `LICENSE` is present and the README license badge resolves.
- `CHANGELOG.md` documents recent releases.

## Submission Notes

Use the GitHub release URL as the project homepage:

https://github.com/StuKozola/matlab-fmp/releases/latest

Use `examples/getStarted.m` as the getting-started example and include `docs/client-options.md` for advanced usage.

Before submitting, download the latest release asset and install it in a clean MATLAB session:

```matlab
client = fmp.Client;
client.quote(symbol="AAPL")
```

Suggested files to reference in the File Exchange listing:

- `README.md`
- `CHANGELOG.md`
- `docs/client-options.md`
- `docs/tutorials/statementValuationTutorial.m`
- `docs/tutorials/screeningAndReturnsTutorial.m`
