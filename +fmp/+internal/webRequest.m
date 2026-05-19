function payload = webRequest(url, params, headers, timeout)
%webRequest Execute an FMP web request.

arguments
    url (1,1) string
    params (1,:) struct
    headers (:,2) string
    timeout (1,1) duration
end

queryArgs = fmp.internal.queryToCell(params);
options = weboptions(ContentType="json", Timeout=seconds(timeout));
if ~isempty(headers)
    options.HeaderFields = cellstr(headers);
end

try
    payload = webread(url, queryArgs{:}, options);
catch exception
    error("fmp:HttpError", ...
        "FMP request failed for %s: %s", url, exception.message);
end

if isstruct(payload) && isfield(payload, "Error Message")
    error("fmp:ApiError", "%s", payload.("Error Message"));
end
end
