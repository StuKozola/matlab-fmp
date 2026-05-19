function apiKey = dotEnvApiKey
%dotEnvApiKey Resolve FMP_API_KEY from a local .env file.

apiKey = "";
folder = string(pwd);

while strlength(folder) > 0
    envFile = fullfile(folder, ".env");
    if isfile(envFile)
        apiKey = readApiKey(envFile);
        return
    end

    parent = string(fileparts(folder));
    if parent == folder
        return
    end
    folder = parent;
end
end

function apiKey = readApiKey(envFile)
apiKey = "";
lines = splitlines(string(fileread(envFile)));

for k = 1:numel(lines)
    line = strip(lines(k));
    if line == "" || startsWith(line, "#")
        continue
    end

    equalsIndex = strfind(line, "=");
    if isempty(equalsIndex)
        continue
    end

    firstEquals = equalsIndex(1);
    name = strip(extractBefore(line, firstEquals));
    if name ~= "FMP_API_KEY"
        continue
    end

    value = strip(extractAfter(line, firstEquals));
    value = stripQuotes(value);
    apiKey = value;
    return
end
end

function value = stripQuotes(value)
if strlength(value) < 2
    return
end

firstChar = extractBefore(value, 2);
lastChar = extractAfter(value, strlength(value) - 1);
if (firstChar == """" && lastChar == """") || ...
        (firstChar == "'" && lastChar == "'")
    value = extractBetween(value, 2, strlength(value) - 1);
end
end
