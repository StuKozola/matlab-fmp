function apiKey = resolveApiKey(apiKey)
%resolveApiKey Resolve an FMP API key from explicit input, env, or vault.

apiKey = string(apiKey);
if strlength(apiKey) > 0
    return
end

apiKey = string(getenv("FMP_API_KEY"));
if strlength(apiKey) > 0
    return
end

apiKey = fmp.internal.dotEnvApiKey;
if strlength(apiKey) > 0
    return
end

if isSecret(fmp.internal.secretName)
    apiKey = string(getSecret(fmp.internal.secretName));
end
end
