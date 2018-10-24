service <- function () 
{
    cfg <- client_config("translate", list(`*` = "translate.{region}.amazonaws.com", 
        `cn-*` = "translate.{region}.amazonaws.com.cn"))
    client_info <- ClientInfo(service_name = "translate", service_id = "Translate", 
        api_version = "2017-07-01", signing_name = "translate", 
        signing_region = cfg$signing_region, endpoint = cfg$endpoint, 
        json_version = "1.1", target_prefix = "AWSShineFrontendService_20170701")
    handlers <- handlers(build = jsonrpc_build, sign = v4_sign_request_handler, 
        unmarshal = jsonrpc_unmarshal, unmarshal_meta = jsonrpc_unmarshal_meta, 
        unmarshal_error = jsonrpc_unmarshal_error)
    svc <- Client(config = cfg$config, client_info = client_info, 
        handlers = handlers)
    return(svc)
}
