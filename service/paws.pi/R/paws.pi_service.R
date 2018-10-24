service <- function () 
{
    cfg <- client_config("pi", list(`*` = "pi.{region}.amazonaws.com", 
        `cn-*` = "pi.{region}.amazonaws.com.cn"))
    client_info <- ClientInfo(service_name = "pi", service_id = "PI", 
        api_version = "2018-02-27", signing_name = "pi", signing_region = cfg$signing_region, 
        endpoint = cfg$endpoint, json_version = "1.1", target_prefix = "PerformanceInsightsv20180227")
    handlers <- handlers(build = jsonrpc_build, sign = v4_sign_request_handler, 
        unmarshal = jsonrpc_unmarshal, unmarshal_meta = jsonrpc_unmarshal_meta, 
        unmarshal_error = jsonrpc_unmarshal_error)
    svc <- Client(config = cfg$config, client_info = client_info, 
        handlers = handlers)
    return(svc)
}
