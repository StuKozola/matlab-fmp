function outputFormat = mustBeOutputFormat(outputFormat)
%mustBeOutputFormat Validate an FMP output format.

outputFormat = lower(string(outputFormat));
validFormats = ["auto", "table", "timetable", "raw", "json"];
if ~ismember(outputFormat, validFormats)
    error("fmp:InvalidOutputFormat", ...
        "OutputFormat must be one of: %s.", strjoin(validFormats, ", "));
end
end
