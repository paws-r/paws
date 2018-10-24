service <- function () 
{
    cfg <- client_config("data.jobs.iot", list(`*` = "data.jobs.iot.{region}.amazonaws.com", 
        `cn-*` = "data.jobs.iot.{region}.amazonaws.com.cn"))
    client_info <- ClientInfo(service_name = "data.jobs.iot", 
        service_id = "IoT Jobs Data Plane", api_version = "2017-09-29", 
        signing_name = "iot-jobs-data", signing_region = cfg$signing_region, 
        endpoint = cfg$endpoint, json_version = NULL, target_prefix = NULL)
    handlers <- handlers(build = restjson_build, sign = v4_sign_request_handler, 
        unmarshal = restjson_unmarshal, unmarshal_meta = restjson_unmarshal_meta, 
        unmarshal_error = restjson_unmarshal_error)
    svc <- Client(config = cfg$config, client_info = client_info, 
        handlers = handlers)
    return(svc)
}
