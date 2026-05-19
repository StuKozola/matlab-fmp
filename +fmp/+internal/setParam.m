function params = setParam(params, name, value)
%setParam Add or replace a query parameter by name.

idx = find(strcmpi({params.Name}, char(name)), 1);
if isempty(idx)
    params(end + 1).Name = char(name);
    params(end).Value = value;
else
    params(idx).Value = value;
end
end
