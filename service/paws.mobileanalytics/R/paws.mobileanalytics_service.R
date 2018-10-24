service <- function () 
{
    cfg <- client_config("mobileanalytics", list(`*` = "mobileanalytics.{region}.amazonaws.com", 
        `cn-*` = "mobileanalytics.{region}.amazonaws.com.cn"))
    client_info <- ClientInfo(service_name = "mobileanalytics", 
        service_id = "Mobile Analytics", api_version = "2014-06-05", 
        signing_name = cfg$signing_name, signing_region = cfg$signing_region, 
        endpoint = cfg$endpoint, json_version = NULL, target_prefix = NULL)
    handlers <- handlers(build = restjson_build, sign = v4_sign_request_handler, 
        unmarshal = restjson_unmarshal, unmarshal_meta = restjson_unmarshal_meta, 
        unmarshal_error = restjson_unmarshal_error)
    svc <- Client(config = cfg$config, client_info = client_info, 
        handlers = handlers)
    return(svc)
}
