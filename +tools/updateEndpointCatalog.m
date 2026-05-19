function catalog = updateEndpointCatalog(options)
%updateEndpointCatalog Refresh generated FMP endpoint metadata and wrappers.

arguments
    options.DocsSource (1,1) string = "https://site.financialmodelingprep.com/developer/docs"
    options.RootFolder (1,1) string = string(fileparts(fileparts(mfilename("fullpath"))))
end

html = readDocs(options.DocsSource);
catalog = parseCatalog(html);
writeCatalog(options.RootFolder, catalog);
writeWrappers(options.RootFolder, catalog);
writeEndpointDocs(options.RootFolder, catalog);
end

function html = readDocs(source)
if isfile(source)
    html = string(fileread(source));
else
    html = string(webread(source));
end
end

function catalog = parseCatalog(html)
anchorPattern = '<a[^>]+href="/developer/docs/stable/([^"]+)"[^>]*>\s*<!-- -->\s*(.*?)\s*<!-- -->';
[tokens, starts, ends] = regexp(html, anchorPattern, "tokens", "start", "end");

entries = struct("MethodName", {}, "Slug", {}, "Title", {}, ...
    "Path", {}, "SampleUrl", {}, "Parameters", {});
usedNames = containers.Map;

for k = 1:numel(tokens)
    slug = string(tokens{k}{1});
    title = htmlDecode(regexprep(string(tokens{k}{2}), "<[^>]+>", ""));
    blockEnd = strlength(html);
    if k < numel(starts)
        blockEnd = starts(k + 1) - 1;
    end

    block = extractBetween(html, ends(k), blockEnd);
    sampleUrl = regexp(block, "https://financialmodelingprep\.com/stable/[^<""]+", "match", "once");
    if isempty(sampleUrl)
        sampleUrl = "https://financialmodelingprep.com/stable/" + slug;
    end

    sampleUrl = htmlDecode(string(sampleUrl));
    path = extractStablePath(sampleUrl, slug);
    methodName = uniqueMethodName(methodNameFromTitle(title, slug), slug, usedNames);
    parameters = queryParameters(sampleUrl);

    entries(end + 1).MethodName = char(methodName); %#ok<AGROW>
    entries(end).Slug = char(slug);
    entries(end).Title = char(title);
    entries(end).Path = char(path);
    entries(end).SampleUrl = char(sampleUrl);
    entries(end).Parameters = cellstr(parameters);
end

catalog = entries;
end

function text = htmlDecode(text)
text = replace(text, "&amp;", "&");
text = replace(text, "&#x27;", "'");
text = replace(text, "&quot;", """");
text = replace(text, "&nbsp;", " ");
text = strip(text);
end

function path = extractStablePath(sampleUrl, slug)
match = regexp(sampleUrl, "https://financialmodelingprep\.com(?<path>/stable/[^?]+)", "names", "once");
if isempty(match)
    path = "/stable/" + slug;
else
    path = string(match.path);
end
end

function parameters = queryParameters(sampleUrl)
parts = split(sampleUrl, "?");
if numel(parts) < 2
    parameters = strings(0, 1);
    return
end

query = parts(2);
pairs = split(query, "&");
parameters = strings(0, 1);
for k = 1:numel(pairs)
    nameValue = split(pairs(k), "=");
    name = string(nameValue(1));
    if strlength(name) > 0 && ~strcmpi(name, "apikey")
        parameters(end + 1, 1) = name; %#ok<AGROW>
    end
end
parameters = unique(parameters, "stable");
end

function methodName = methodNameFromTitle(title, slug)
title = regexprep(title, "\s*API\s*$", "", "ignorecase");
title = regexprep(title, "[^A-Za-z0-9]+", " ");
words = split(strip(string(title)));
words(words == "") = [];

if isempty(words)
    methodName = slugToCamel(slug);
    return
end

parts = strings(size(words));
for k = 1:numel(words)
    word = lower(words(k));
    if k == 1
        parts(k) = word;
    else
        parts(k) = upper(extractBefore(word, 2)) + extractAfter(word, 1);
    end
end

methodName = join(parts, "");
if ~isletter(extractBefore(methodName, 2))
    methodName = "get" + upper(extractBefore(methodName, 2)) + extractAfter(methodName, 1);
end
methodName = matlab.lang.makeValidName(methodName);
end

function methodName = slugToCamel(slug)
words = split(string(slug), "-");
parts = strings(size(words));
for k = 1:numel(words)
    word = lower(words(k));
    if k == 1
        parts(k) = word;
    else
        parts(k) = upper(extractBefore(word, 2)) + extractAfter(word, 1);
    end
end
methodName = join(parts, "");
methodName = matlab.lang.makeValidName(methodName);
end

function methodName = uniqueMethodName(methodName, slug, usedNames)
originalName = methodName;
if isKey(usedNames, char(methodName))
    methodName = originalName + upper(extractBefore(slugToCamel(slug), 2)) + extractAfter(slugToCamel(slug), 1);
end

suffix = 2;
while isKey(usedNames, char(methodName))
    methodName = originalName + string(suffix);
    suffix = suffix + 1;
end
usedNames(char(methodName)) = true; %#ok<NASGU>
end

function writeCatalog(rootFolder, catalog)
resourcesFolder = fullfile(rootFolder, "resources");
if ~isfolder(resourcesFolder)
    mkdir(resourcesFolder);
end

jsonText = string(jsonencode(catalog, PrettyPrint=true));
writeText(fullfile(resourcesFolder, "endpoints.json"), jsonText + newline);
end

function writeWrappers(rootFolder, catalog)
clientFolder = fullfile(rootFolder, "+fmp", "@Client");
files = dir(fullfile(clientFolder, "*.m"));
for k = 1:numel(files)
    filePath = fullfile(files(k).folder, files(k).name);
    text = string(fileread(filePath));
    if contains(text, "Generated from resources/endpoints.json")
        delete(filePath);
    end
end

manualNames = ["balanceSheetStatement", "cashFlowStatement", "Client", ...
    "endpoint", "endpoints", "historicalPrices", "incomeStatement", ...
    "keyMetrics", "profile", "quote", "ratios"];

for k = 1:numel(catalog)
    methodName = string(catalog(k).MethodName);
    if ismember(methodName, manualNames)
        continue
    end

    template = strjoin([ ...
        "function out = %s(obj, varargin)" ...
        "%%%s %s." ...
        "%%   Generated from resources/endpoints.json." ...
        "" ...
        "out = obj.endpoint(""%s"", varargin{:});" ...
        "end" ...
        ""], newline);
    fileText = sprintf(template, ...
        methodName, methodName, catalog(k).Title, catalog(k).Path);
    writeText(fullfile(clientFolder, methodName + ".m"), string(fileText));
end
end

function writeEndpointDocs(rootFolder, catalog)
docsFolder = fullfile(rootFolder, "docs");
if ~isfolder(docsFolder)
    mkdir(docsFolder);
end

lines = strings(0, 1);
lines(end + 1) = "# Generated FMP Endpoint Catalog";
lines(end + 1) = "";
lines(end + 1) = "Generated from https://site.financialmodelingprep.com/developer/docs.";
lines(end + 1) = "";
lines(end + 1) = "| Method | Title | Path | Example parameters |";
lines(end + 1) = "| --- | --- | --- | --- |";
for k = 1:numel(catalog)
    params = string(catalog(k).Parameters);
    if isempty(params)
        params = "";
    else
        params = strjoin(params, ", ");
    end
    lines(end + 1) = "| `" + string(catalog(k).MethodName) + "` | " + ...
        string(catalog(k).Title) + " | `" + string(catalog(k).Path) + ...
        "` | " + params + " |"; %#ok<AGROW>
end

writeText(fullfile(docsFolder, "endpoints.md"), strjoin(lines, newline) + newline);
end

function writeText(filePath, text)
fid = fopen(filePath, "w");
if fid < 0
    error("fmp:WriteFailed", "Unable to write %s.", filePath);
end
cleanup = onCleanup(@() fclose(fid));
fprintf(fid, "%s", text);
end
