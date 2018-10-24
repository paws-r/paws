service <- function () 
{
    cfg <- client_config("resource-groups", list(`*` = "resource-groups.{region}.amazonaws.com", 
        `cn-*` = "resource-groups.{region}.amazonaws.com.cn"))
    client_info <- ClientInfo(service_name = "resource-groups", 
        service_id = "Resource Groups", api_version = "2017-11-27", 
        signing_name = "resource-groups", signing_region = cfg$signing_region, 
        endpoint = cfg$endpoint, json_version = NULL, target_prefix = NULL)
    handlers <- handlers(build = restjson_build, sign = v4_sign_request_handler, 
        unmarshal = restjson_unmarshal, unmarshal_meta = restjson_unmarshal_meta, 
        unmarshal_error = restjson_unmarshal_error)
    svc <- Client(config = cfg$config, client_info = client_info, 
        handlers = handlers)
    return(svc)
}
