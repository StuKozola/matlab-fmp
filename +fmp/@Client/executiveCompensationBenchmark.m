function out = executiveCompensationBenchmark(obj, varargin)
%executiveCompensationBenchmark Executive Compensation Benchmark API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/executive-compensation-benchmark", varargin{:});
end
