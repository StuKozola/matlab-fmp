function out = esgBenchmarkComparison(obj, varargin)
%esgBenchmarkComparison ESG Benchmark Comparison API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/esg-benchmark", varargin{:});
end
