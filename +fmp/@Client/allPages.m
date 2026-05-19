function out = allPages(obj, pathOrName, varargin)
%allPages Retrieve multiple pages from a paginated FMP endpoint.
%   allPages fetches pages until an empty page is returned or MaxPages is
%   reached. Page numbers default to the FMP stable API convention of 0.

arguments
    obj (1,1) fmp.Client
    pathOrName (1,1) string
end
arguments (Repeating)
    varargin
end

[endpointArgs, paging] = parsePagingOptions(varargin);
[baseParams, outputFormat] = fmp.internal.parseNameValues( ...
    endpointArgs, obj.OutputFormat);

allPayload = [];
hasPayload = false;
pageNumber = paging.StartPage;

for pageIndex = 1:paging.MaxPages
    pageParams = fmp.internal.setParam(baseParams, "page", pageNumber);
    if ~isempty(paging.PageSize)
        pageParams = fmp.internal.setParam(pageParams, "limit", paging.PageSize);
    end

    pageArgs = fmp.internal.paramsToNameValues(pageParams);
    pagePayload = obj.endpoint(pathOrName, pageArgs{:}, OutputFormat="raw");
    pagePayload = unwrapPagePayload(pagePayload);

    if isEmptyPayload(pagePayload)
        break
    end

    if hasPayload
        allPayload = appendPayload(allPayload, pagePayload);
    else
        allPayload = pagePayload;
        hasPayload = true;
    end

    pageNumber = pageNumber + 1;
end

if ~hasPayload
    allPayload = struct([]);
end

out = fmp.internal.normalizeOutput(allPayload, outputFormat);
end

function [endpointArgs, paging] = parsePagingOptions(args)
paging = struct( ...
    "MaxPages", 10, ...
    "StartPage", 0, ...
    "PageSize", []);
endpointArgs = {};

if mod(numel(args), 2) ~= 0
    error("fmp:InvalidNameValue", ...
        "Endpoint arguments must be name-value pairs.");
end

for k = 1:2:numel(args)
    name = string(args{k});
    value = args{k + 1};

    switch lower(name)
        case "maxpages"
            paging.MaxPages = validatePositiveInteger(value, "MaxPages");
        case "startpage"
            paging.StartPage = validateNonnegativeInteger(value, "StartPage");
        case "pagesize"
            paging.PageSize = validatePositiveInteger(value, "PageSize");
        otherwise
            endpointArgs(end + 1:end + 2) = args(k:k + 1); %#ok<AGROW>
    end
end
end

function value = validatePositiveInteger(value, name)
value = double(value);
if ~isscalar(value) || ~isfinite(value) || value < 1 || fix(value) ~= value
    error("fmp:InvalidPagingOption", ...
        "%s must be a positive integer.", name);
end
end

function value = validateNonnegativeInteger(value, name)
value = double(value);
if ~isscalar(value) || ~isfinite(value) || value < 0 || fix(value) ~= value
    error("fmp:InvalidPagingOption", ...
        "%s must be a nonnegative integer.", name);
end
end

function payload = unwrapPagePayload(payload)
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

function tf = isEmptyPayload(payload)
tf = isempty(payload) || ...
    (isstruct(payload) && numel(payload) == 0) || ...
    (iscell(payload) && numel(payload) == 0) || ...
    (istable(payload) && height(payload) == 0);
end

function payload = appendPayload(payload, pagePayload)
if isstruct(payload) && isstruct(pagePayload)
    payload = [payload(:); pagePayload(:)];
elseif iscell(payload) && iscell(pagePayload)
    payload = [payload(:); pagePayload(:)];
elseif istable(payload) && istable(pagePayload)
    payload = [payload; pagePayload]; %#ok<AGROW>
else
    payload = [payload; pagePayload]; %#ok<AGROW>
end
end
