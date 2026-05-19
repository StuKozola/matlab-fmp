function out = executiveCompensation(obj, varargin)
%executiveCompensation Executive Compensation API.
%   Generated from resources/endpoints.json.

out = obj.endpoint("/stable/governance-executive-compensation", varargin{:});
end
