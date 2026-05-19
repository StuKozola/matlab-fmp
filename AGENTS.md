# Repository Guidelines

## Project Structure

This workspace is currently empty. As MATLAB code is added, keep source files in clearly named project folders and place MATLAB unit tests under a dedicated `tests/` folder when practical.

## MATLAB Workflow

Use the MATLAB MCP tools for MATLAB-specific work:

- `detect_matlab_toolboxes` to inspect the available MATLAB installation and toolboxes.
- `evaluate_matlab_code` for small, focused checks in the active MATLAB session.
- `check_matlab_code` before committing MATLAB `.m` files.
- `run_matlab_test_file` for MATLAB unit test files.

The active MATLAB connection is MATLAB R2024b on Windows.

## Coding Standards

Prefer idiomatic MATLAB over hand-rolled implementations when toolbox functions already solve the problem. Keep functions focused, name variables descriptively, and add comments only where they clarify non-obvious behavior.

## Validation

For new MATLAB code, run static analysis with `check_matlab_code` and add or run focused tests with `matlab.unittest` where behavior is non-trivial.
