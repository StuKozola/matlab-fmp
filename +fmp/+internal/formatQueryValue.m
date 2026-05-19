function value = formatQueryValue(value)
%formatQueryValue Convert MATLAB values to FMP query-string values.

if isstring(value)
    value = strjoin(value, ",");
elseif ischar(value)
    value = string(value);
elseif iscellstr(value)
    value = strjoin(string(value), ",");
elseif isdatetime(value)
    value = formatDatetime(value);
elseif isduration(value)
    value = strjoin(string(seconds(value)), ",");
elseif isnumeric(value)
    value = strjoin(string(value), ",");
elseif islogical(value)
    value = strjoin(lower(string(value)), ",");
elseif iscell(value)
    value = strjoin(string(value), ",");
else
    error("fmp:UnsupportedQueryValue", ...
        "Unsupported query value type %s.", class(value));
end

value = char(value);
end

function value = formatDatetime(value)
if all(timeofday(value) == duration(0, 0, 0), "all")
    value = string(value, "yyyy-MM-dd");
else
    value = string(value, "yyyy-MM-dd'T'HH:mm:ss");
end
value = strjoin(value, ",");
end
