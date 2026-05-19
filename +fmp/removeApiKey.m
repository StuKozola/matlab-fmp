function removeApiKey
%removeApiKey Remove the FMP API key from the MATLAB vault.

if isSecret(fmp.internal.secretName)
    removeSecret(fmp.internal.secretName);
end
end
