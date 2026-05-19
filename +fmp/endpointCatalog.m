function catalog = endpointCatalog
%endpointCatalog Return the generated FMP stable endpoint catalog.

persistent cachedCatalog

if isempty(cachedCatalog)
    rootFolder = fileparts(fileparts(mfilename("fullpath")));
    catalogFile = fullfile(rootFolder, "resources", "endpoints.json");
    if ~isfile(catalogFile)
        error("fmp:MissingCatalog", ...
            "Endpoint catalog not found. Run tools.updateEndpointCatalog.");
    end

    raw = jsondecode(fileread(catalogFile));
    if isempty(raw)
        cachedCatalog = table;
    else
        cachedCatalog = struct2table(raw);
        cachedCatalog.MethodName = string(cachedCatalog.MethodName);
        cachedCatalog.Slug = string(cachedCatalog.Slug);
        cachedCatalog.Title = string(cachedCatalog.Title);
        cachedCatalog.Path = string(cachedCatalog.Path);
        cachedCatalog.SampleUrl = string(cachedCatalog.SampleUrl);
    end
end

catalog = cachedCatalog;
end
