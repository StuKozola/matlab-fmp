classdef RequestRecorder < handle
    %RequestRecorder Test helper that records mocked FMP requests.

    properties
        Payload
        LastUrl string = ""
        LastParams struct = struct("Name", {}, "Value", {})
        LastHeaders string = strings(0, 2)
        LastTimeout duration = seconds(0)
    end

    methods
        function obj = RequestRecorder(payload)
            obj.Payload = payload;
        end

        function payload = request(obj, url, params, headers, timeout)
            obj.LastUrl = url;
            obj.LastParams = params;
            obj.LastHeaders = headers;
            obj.LastTimeout = timeout;
            payload = obj.Payload;
        end
    end
end
