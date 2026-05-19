function validateEndpointParameters(info, params, mode)
%validateEndpointParameters Validate endpoint name-value parameters.

mode = fmp.internal.mustBeParameterValidation(mode);
if mode == "none" || ~isfield(info, "RequiredParameters")
    return
end

required = toStringVector(info.RequiredParameters);
provided = lower(string({params.Name}));
missing = strings(0, 1);

for name = required(:)'
    if ~hasNonemptyParam(params, name)
        missing(end + 1, 1) = name; %#ok<AGROW>
    end
end

if ~isempty(missing)
    error("fmp:MissingRequiredParameter", ...
        "Missing required FMP parameter(s) for %s (%s): %s.", ...
        endpointName(info), info.Path, strjoin(missing, ", "));
end

if mode ~= "strict" || ~isfield(info, "Parameters")
    return
end

known = lower(unique([ ...
    toStringVector(info.Parameters); ...
    toStringVector(info.RequiredParameters); ...
    toStringVector(info.OptionalParameters)], "stable"));
if isempty(known)
    return
end

unknown = setdiff(provided, known, "stable");
if ~isempty(unknown)
    error("fmp:UnknownParameter", ...
        "Unknown FMP parameter(s) for %s (%s): %s. Use ParameterValidation=""required"" to allow undocumented parameters.", ...
        endpointName(info), info.Path, strjoin(unknown, ", "));
end
end

function values = toStringVector(values)
if isempty(values)
    values = strings(0, 1);
elseif iscell(values)
    values = string(values(:));
else
    values = string(values(:));
end
values = strip(values);
values(values == "") = [];
end

function tf = hasNonemptyParam(params, name)
tf = false;
for k = 1:numel(params)
    if ~strcmpi(params(k).Name, name)
        continue
    end

    value = params(k).Value;
    tf = ~(isempty(value) || (isstring(value) && all(strlength(value) == 0)));
    return
end
end

function name = endpointName(info)
if strlength(string(info.MethodName)) > 0
    name = string(info.MethodName);
elseif strlength(string(info.Slug)) > 0
    name = string(info.Slug);
else
    name = "endpoint";
end
end
