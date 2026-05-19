function url = joinUrl(baseUrl, path)
%joinUrl Join a base URL and API path.

baseUrl = strip(string(baseUrl));
path = strip(string(path));

if endsWith(baseUrl, "/")
    baseUrl = extractBefore(baseUrl, strlength(baseUrl));
end

if ~startsWith(path, "/")
    path = "/" + path;
end

url = baseUrl + path;
end
