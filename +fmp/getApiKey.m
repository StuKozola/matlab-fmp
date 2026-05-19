function apiKey = getApiKey
%getApiKey Retrieve the FMP API key from the MATLAB vault.

if ~isSecret(fmp.internal.secretName)
    error("fmp:MissingSecret", ...
        "No MATLAB vault secret named %s exists. Run fmp.setApiKey first.", ...
        fmp.internal.secretName);
end

apiKey = string(getSecret(fmp.internal.secretName));
end
