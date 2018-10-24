service <- function () 
{
    cfg <- client_config("inspector", list(`*` = "inspector.{region}.amazonaws.com", 
        `cn-*` = "inspector.{region}.amazonaws.com.cn"))
    client_info <- ClientInfo(service_name = "inspector", service_id = "Inspector", 
        api_version = "2016-02-16", signing_name = cfg$signing_name, 
        signing_region = cfg$signing_region, endpoint = cfg$endpoint, 
        json_version = "1.1", target_prefix = "InspectorService")
    handlers <- handlers(build = jsonrpc_build, sign = v4_sign_request_handler, 
        unmarshal = jsonrpc_unmarshal, unmarshal_meta = jsonrpc_unmarshal_meta, 
        unmarshal_error = jsonrpc_unmarshal_error)
    svc <- Client(config = cfg$config, client_info = client_info, 
        handlers = handlers)
    return(svc)
}
