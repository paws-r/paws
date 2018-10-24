service <- function () 
{
    cfg <- client_config("cloud9", list(`*` = "cloud9.{region}.amazonaws.com", 
        `cn-*` = "cloud9.{region}.amazonaws.com.cn"))
    client_info <- ClientInfo(service_name = "cloud9", service_id = "Cloud9", 
        api_version = "2017-09-23", signing_name = cfg$signing_name, 
        signing_region = cfg$signing_region, endpoint = cfg$endpoint, 
        json_version = "1.1", target_prefix = "AWSCloud9WorkspaceManagementService")
    handlers <- handlers(build = jsonrpc_build, sign = v4_sign_request_handler, 
        unmarshal = jsonrpc_unmarshal, unmarshal_meta = jsonrpc_unmarshal_meta, 
        unmarshal_error = jsonrpc_unmarshal_error)
    svc <- Client(config = cfg$config, client_info = client_info, 
        handlers = handlers)
    return(svc)
}
