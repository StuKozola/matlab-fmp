function [params, outputFormat] = parseNameValues(args, defaultOutputFormat)
%parseNameValues Parse FMP endpoint name-value arguments.

if mod(numel(args), 2) ~= 0
    error("fmp:InvalidNameValue", ...
        "Endpoint arguments must be name-value pairs.");
end

params = struct("Name", {}, "Value", {});
outputFormat = fmp.internal.mustBeOutputFormat(defaultOutputFormat);

for k = 1:2:numel(args)
    name = string(args{k});
    if ~isscalar(name) || strlength(name) == 0
        error("fmp:InvalidParameterName", ...
            "Endpoint parameter names must be nonempty text scalars.");
    end

    if strcmpi(name, "OutputFormat")
        outputFormat = fmp.internal.mustBeOutputFormat(args{k + 1});
    else
        params(end + 1).Name = char(name); %#ok<AGROW>
        params(end).Value = args{k + 1};
    end
end
end
