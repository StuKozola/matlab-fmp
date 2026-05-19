function tbl = sortTable(tbl, sortBy, sortDirection)
%sortTable Sort table or timetable by a variable when present.

arguments
    tbl
    sortBy (1,1) string
    sortDirection (1,1) string = "descend"
end

sortDirection = lower(sortDirection);
if ~ismember(sortDirection, ["ascend", "descend"])
    error("fmp:InvalidSortDirection", ...
        "SortDirection must be ""ascend"" or ""descend"".");
end

if isempty(tbl) || width(tbl) == 0
    return
end

names = string(tbl.Properties.VariableNames);
idx = find(strcmpi(names, sortBy), 1);
if isempty(idx)
    error("fmp:UnknownSortVariable", ...
        "Cannot sort by %s because that variable is not present.", sortBy);
end

tbl = sortrows(tbl, names(idx), sortDirection);
end
