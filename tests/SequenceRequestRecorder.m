classdef SequenceRequestRecorder < handle
    %SequenceRequestRecorder Test helper for ordered mocked responses.

    properties
        Payloads cell
        CallCount (1,1) double = 0
        UrlHistory cell = {}
        ParamsHistory cell = {}
        HeadersHistory cell = {}
        TimeoutHistory cell = {}
    end

    methods
        function obj = SequenceRequestRecorder(payloads)
            obj.Payloads = payloads;
        end

        function payload = request(obj, url, params, headers, timeout)
            obj.CallCount = obj.CallCount + 1;
            obj.UrlHistory{end + 1} = url;
            obj.ParamsHistory{end + 1} = params;
            obj.HeadersHistory{end + 1} = headers;
            obj.TimeoutHistory{end + 1} = timeout;

            index = min(obj.CallCount, numel(obj.Payloads));
            payload = obj.Payloads{index};
            if isa(payload, "MException")
                throw(payload)
            end
        end
    end
end
