function mode = mustBeParameterValidation(mode)
%mustBeParameterValidation Validate an FMP parameter validation mode.

mode = lower(string(mode));
validModes = ["none", "required", "strict"];
if ~ismember(mode, validModes)
    error("fmp:InvalidParameterValidation", ...
        "ParameterValidation must be one of: %s.", strjoin(validModes, ", "));
end
end
