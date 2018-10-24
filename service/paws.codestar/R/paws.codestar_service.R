service <- function () 
{
    cfg <- client_config("codestar", list(`*` = "codestar.{region}.amazonaws.com", 
        `cn-*` = "codestar.{region}.amazonaws.com.cn"))
    client_info <- ClientInfo(service_name = "codestar", service_id = "CodeStar", 
        api_version = "2017-04-19", signing_name = cfg$signing_name, 
        signing_region = cfg$signing_region, endpoint = cfg$endpoint, 
        json_version = "1.1", target_prefix = "CodeStar_20170419")
    handlers <- handlers(build = jsonrpc_build, sign = v4_sign_request_handler, 
        unmarshal = jsonrpc_unmarshal, unmarshal_meta = jsonrpc_unmarshal_meta, 
        unmarshal_error = jsonrpc_unmarshal_error)
    svc <- Client(config = cfg$config, client_info = client_info, 
        handlers = handlers)
    return(svc)
}
