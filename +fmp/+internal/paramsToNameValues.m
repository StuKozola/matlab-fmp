function args = paramsToNameValues(params)
%paramsToNameValues Convert parameter structs to name-value cells.

args = cell(1, 2 * numel(params));
for k = 1:numel(params)
    args{2 * k - 1} = params(k).Name;
    args{2 * k} = params(k).Value;
end
end
