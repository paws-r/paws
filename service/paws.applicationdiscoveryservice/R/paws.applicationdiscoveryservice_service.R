service <- function () 
{
    cfg <- client_config("discovery", list(`*` = "discovery.{region}.amazonaws.com", 
        `cn-*` = "discovery.{region}.amazonaws.com.cn"))
    client_info <- ClientInfo(service_name = "discovery", service_id = "Application Discovery Service", 
        api_version = "2015-11-01", signing_name = cfg$signing_name, 
        signing_region = cfg$signing_region, endpoint = cfg$endpoint, 
        json_version = "1.1", target_prefix = "AWSPoseidonService_V2015_11_01")
    handlers <- handlers(build = jsonrpc_build, sign = v4_sign_request_handler, 
        unmarshal = jsonrpc_unmarshal, unmarshal_meta = jsonrpc_unmarshal_meta, 
        unmarshal_error = jsonrpc_unmarshal_error)
    svc <- Client(config = cfg$config, client_info = client_info, 
        handlers = handlers)
    return(svc)
}
