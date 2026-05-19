function info = resolveEndpoint(pathOrName)
%resolveEndpoint Resolve an endpoint path, slug, or generated method name.

pathOrName = string(pathOrName);

if startsWith(pathOrName, "http")
    error("fmp:InvalidEndpointPath", ...
        "Use a stable API path such as /stable/quote, not a full URL.");
end

if startsWith(pathOrName, "/")
    info = struct("MethodName", "", "Slug", "", "Title", "", ...
        "Path", pathOrName, "SampleUrl", "");
    return
end

catalog = fmp.endpointCatalog;
matches = strcmpi(catalog.MethodName, pathOrName) | strcmpi(catalog.Slug, pathOrName);
if ~any(matches)
    error("fmp:UnknownEndpoint", ...
        "Unknown FMP endpoint '%s'. Use client.endpoints to inspect the catalog.", pathOrName);
end

row = catalog(find(matches, 1), :);
info = table2struct(row);
end
