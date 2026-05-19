function out = endpoint(obj, pathOrName, varargin)
%endpoint Call an FMP stable API endpoint by path, slug, or method name.

arguments
    obj (1,1) fmp.Client
    pathOrName (1,1) string
end
arguments (Repeating)
    varargin
end

info = fmp.internal.resolveEndpoint(pathOrName);
[params, outputFormat] = fmp.internal.parseNameValues(varargin, obj.OutputFormat);

if strlength(obj.ApiKey) == 0
    error("fmp:MissingApiKey", ...
        "No FMP API key was provided. Pass ApiKey, set FMP_API_KEY, or run fmp.setApiKey.");
end

headers = strings(0, 2);
if obj.UseQueryApiKey
    params = fmp.internal.setParam(params, "apikey", obj.ApiKey);
else
    headers = ["apikey", obj.ApiKey];
end

url = fmp.internal.joinUrl(obj.BaseUrl, info.Path);
payload = obj.RequestFunction(url, params, headers, obj.Timeout);
out = fmp.internal.normalizeOutput(payload, outputFormat);
end
