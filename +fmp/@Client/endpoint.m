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
fmp.internal.validateEndpointParameters(info, params, obj.ParameterValidation);

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
payload = requestWithRetries(obj, url, params, headers);
out = fmp.internal.normalizeOutput(payload, outputFormat);
end

function payload = requestWithRetries(obj, url, params, headers)
maxAttempts = obj.MaxRetries + 1;
lastException = [];

for attempt = 1:maxAttempts
    try
        payload = obj.RequestFunction(url, params, headers, obj.Timeout);
        return
    catch exception
        lastException = exception;
        if attempt == maxAttempts || ~fmp.internal.isRetriableError(exception)
            rethrow(exception)
        end

        pause(seconds(obj.RetryDelay) * 2^(attempt - 1));
    end
end

rethrow(lastException)
end
