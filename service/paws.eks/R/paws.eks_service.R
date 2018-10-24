service <- function () 
{
    cfg <- client_config("eks", list(`*` = "eks.{region}.amazonaws.com", 
        `cn-*` = "eks.{region}.amazonaws.com.cn"))
    client_info <- ClientInfo(service_name = "eks", service_id = "EKS", 
        api_version = "2017-11-01", signing_name = "eks", signing_region = cfg$signing_region, 
        endpoint = cfg$endpoint, json_version = "1.1", target_prefix = NULL)
    handlers <- handlers(build = restjson_build, sign = v4_sign_request_handler, 
        unmarshal = restjson_unmarshal, unmarshal_meta = restjson_unmarshal_meta, 
        unmarshal_error = restjson_unmarshal_error)
    svc <- Client(config = cfg$config, client_info = client_info, 
        handlers = handlers)
    return(svc)
}
