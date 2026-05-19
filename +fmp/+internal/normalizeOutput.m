function out = normalizeOutput(payload, outputFormat)
%normalizeOutput Convert FMP responses into MATLAB-friendly outputs.

outputFormat = fmp.internal.mustBeOutputFormat(outputFormat);

if outputFormat == "raw"
    out = payload;
    return
end

if outputFormat == "json"
    out = jsonencode(payload);
    return
end

payload = unwrapPayload(payload);
tbl = payloadToTable(payload);

if outputFormat == "timetable" || outputFormat == "auto"
    [tf, tt] = tryTimetable(tbl);
    if tf
        out = tt;
        return
    end
end

out = tbl;
end

function payload = unwrapPayload(payload)
if ~isstruct(payload) || ~isscalar(payload)
    return
end

preferredFields = ["historical", "data", "results"];
for fieldName = preferredFields
    if isfield(payload, fieldName)
        payload = payload.(fieldName);
        return
    end
end
end

function tbl = payloadToTable(payload)
if istable(payload)
    tbl = payload;
elseif isempty(payload)
    tbl = table;
elseif isstruct(payload)
    tbl = struct2table(payload);
elseif iscell(payload) && all(cellfun(@isstruct, payload))
    tbl = struct2table([payload{:}]);
else
    tbl = table(payload, VariableNames="Value");
end
end

function [tf, tt] = tryTimetable(tbl)
tf = false;
tt = timetable;

if isempty(tbl) || width(tbl) == 0
    return
end

candidates = ["date", "timestamp", "filingDate", "acceptedDate", ...
    "paymentDate", "recordDate", "declarationDate", "reportedDate", ...
    "pricedDate"];

names = string(tbl.Properties.VariableNames);
idx = find(ismember(names, candidates), 1);
if isempty(idx)
    return
end

timeValues = toDatetime(tbl.(names(idx)));
if isempty(timeValues)
    return
end

tbl.(names(idx)) = [];
tt = table2timetable(tbl, RowTimes=timeValues);
tf = true;
end

function values = toDatetime(values)
try
    if isdatetime(values)
        return
    elseif isnumeric(values)
        if all(values > 1e11, "all")
            values = datetime(values ./ 1000, ConvertFrom="posixtime");
        else
            values = datetime(values, ConvertFrom="posixtime");
        end
    else
        values = datetime(string(values));
    end
catch
    values = [];
end
end
