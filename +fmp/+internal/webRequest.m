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
    error(classifyWebException(exception), ...
        "FMP request failed for %s%s: %s", ...
        url, requestParameterSummary(params), exception.message);
end

if isstruct(payload) && isfield(payload, "Error Message")
    message = string(payload.("Error Message"));
    error(classifyApiMessage(message), "%s", message);
end
end

function identifier = classifyWebException(exception)
text = lower(string(exception.identifier) + " " + string(exception.message));

if contains(text, "429") || contains(text, "too many requests") || ...
        contains(text, "rate limit")
    identifier = "fmp:RateLimit";
elseif contains(text, "timed out") || contains(text, "timeout")
    identifier = "fmp:HttpTimeout";
elseif ~isempty(regexp(text, "status\s*5\d\d|http\s*5\d\d", "once"))
    identifier = "fmp:HttpServerError";
else
    identifier = "fmp:HttpError";
end
end

function identifier = classifyApiMessage(message)
text = lower(string(message));

if contains(text, "rate limit") || contains(text, "limit reach") || ...
        contains(text, "too many requests")
    identifier = "fmp:RateLimit";
else
    identifier = "fmp:ApiError";
end
end

function summary = requestParameterSummary(params)
names = string({params.Name});
names(strcmpi(names, "apikey")) = [];
if isempty(names)
    summary = "";
else
    summary = " with parameter(s) " + strjoin(names, ", ");
end
end
