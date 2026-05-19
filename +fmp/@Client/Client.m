classdef Client
    %Client Client for the Financial Modeling Prep stable API.

    properties (SetAccess = private)
        BaseUrl (1,1) string = "https://financialmodelingprep.com"
        OutputFormat (1,1) string = "auto"
        UseQueryApiKey (1,1) logical = false
        Timeout (1,1) duration = seconds(30)
        MaxRetries (1,1) double {mustBeInteger, mustBeNonnegative} = 2
        RetryDelay (1,1) duration = seconds(1)
        ParameterValidation (1,1) string = "required"
    end

    properties (Access = private)
        ApiKey (1,1) string = ""
        RequestFunction (1,1) function_handle = @fmp.internal.webRequest
    end

    methods
        function obj = Client(options)
            %Client Create an FMP API client.
            arguments
                options.ApiKey (1,1) string = ""
                options.BaseUrl (1,1) string = "https://financialmodelingprep.com"
                options.OutputFormat (1,1) string = "auto"
                options.UseQueryApiKey (1,1) logical = false
                options.Timeout (1,1) duration = seconds(30)
                options.MaxRetries (1,1) double {mustBeInteger, mustBeNonnegative} = 2
                options.RetryDelay (1,1) duration = seconds(1)
                options.ParameterValidation (1,1) string = "required"
                options.RequestFunction (1,1) function_handle = @fmp.internal.webRequest
            end

            obj.ApiKey = fmp.internal.resolveApiKey(options.ApiKey);
            obj.BaseUrl = strip(options.BaseUrl);
            if endsWith(obj.BaseUrl, "/")
                obj.BaseUrl = extractBefore(obj.BaseUrl, strlength(obj.BaseUrl));
            end
            obj.OutputFormat = fmp.internal.mustBeOutputFormat(options.OutputFormat);
            obj.UseQueryApiKey = options.UseQueryApiKey;
            obj.Timeout = options.Timeout;
            obj.MaxRetries = options.MaxRetries;
            obj.RetryDelay = options.RetryDelay;
            obj.ParameterValidation = fmp.internal.mustBeParameterValidation( ...
                options.ParameterValidation);
            obj.RequestFunction = options.RequestFunction;
        end

        function catalog = endpoints(~)
            %endpoints Return the generated FMP endpoint catalog.
            catalog = fmp.endpointCatalog;
        end
    end
end
