function info = endpointInfo(obj, pathOrName)
%endpointInfo Return metadata for one FMP endpoint.
%   endpointInfo returns generated catalog metadata by method name, slug, or
%   stable API path. Call endpoints to inspect the full catalog.

arguments
    obj (1,1) fmp.Client %#ok<INUSA>
    pathOrName (1,1) string
end

info = fmp.internal.resolveEndpoint(pathOrName);
required = string(info.RequiredParameters(:));
optional = string(info.OptionalParameters(:));
parameters = unique([required; optional; string(info.Parameters(:))], "stable");
parameters(parameters == "") = [];

info.ParameterTable = table( ...
    parameters, ...
    ismember(lower(parameters), lower(required)), ...
    ismember(lower(parameters), lower(optional)), ...
    VariableNames=["Name", "Required", "Optional"]);
end
