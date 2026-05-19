function info = resolveEndpoint(pathOrName)
%resolveEndpoint Resolve an endpoint path, slug, or generated method name.

pathOrName = string(pathOrName);

if startsWith(pathOrName, "http")
    error("fmp:InvalidEndpointPath", ...
        "Use a stable API path such as /stable/quote, not a full URL.");
end

catalog = fmp.endpointCatalog;
if startsWith(pathOrName, "/")
    matches = strcmpi(catalog.Path, pathOrName);
    if any(matches)
        row = catalog(find(matches, 1), :);
        info = table2struct(row);
        return
    end

    info = struct("MethodName", "", "Slug", "", "Title", "", ...
        "Category", "", "Path", pathOrName, "SampleUrl", "", ...
        "Parameters", {{}}, "RequiredParameters", {{}}, ...
        "OptionalParameters", {{}}, "HasPagination", false, ...
        "DateFieldHint", "");
    return
end

matches = strcmpi(catalog.MethodName, pathOrName) | strcmpi(catalog.Slug, pathOrName);
if ~any(matches)
    error("fmp:UnknownEndpoint", ...
        "Unknown FMP endpoint '%s'. Use client.endpoints to inspect the catalog.", pathOrName);
end

row = catalog(find(matches, 1), :);
info = table2struct(row);
end
