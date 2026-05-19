# Changelog

## v0.3.0 - 2026-05-19

- Added higher-level workflows for peer comparison, statement summaries, and factor screening.
- Added `client.endpointInfo` for endpoint-specific metadata and parameter inspection.
- Expanded live smoke coverage to quote, historical prices, income statements, and screener calls.
- Added README badges and a BSD-3-Clause license.
- Updated File Exchange preparation notes for later manual submission.

## v0.2.0 - 2026-05-19

- Added pagination with `client.allPages`.
- Added retry/backoff behavior for rate limits, timeouts, and transient HTTP failures.
- Added required and strict endpoint parameter validation.
- Added GitHub live smoke workflow using the `FMP_API_KEY` repository secret.
- Added client options documentation, File Exchange readiness notes, valuation examples, and tutorial-style Live Scripts.
- Verified the GitHub release artifact by installing the published `.mltbx` in a clean MATLAB batch session.

## v0.1.1 - 2026-05-19

- Published the first usable GitHub release with `matlab-fmp.mltbx`.
- Fixed CI build path handling for GitHub Actions.
- Added release installation documentation.

## v0.1.0 - 2026-05-19

- Initial generated FMP stable endpoint catalog and MATLAB client.
- Added mocked unit tests, examples, package project, CI workflow, and release workflow.
