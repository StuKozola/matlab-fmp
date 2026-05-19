function args = queryToCell(params)
%queryToCell Convert parameter structs into webread query arguments.

args = cell(1, 2 * numel(params));
for k = 1:numel(params)
    args{2 * k - 1} = params(k).Name;
    args{2 * k} = fmp.internal.formatQueryValue(params(k).Value);
end
end
