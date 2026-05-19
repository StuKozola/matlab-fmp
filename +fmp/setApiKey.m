function setApiKey(options)
%setApiKey Store the FMP API key in the MATLAB vault.

arguments
    options.Overwrite (1,1) logical = true
end

setSecret(fmp.internal.secretName, Overwrite=options.Overwrite);
end
