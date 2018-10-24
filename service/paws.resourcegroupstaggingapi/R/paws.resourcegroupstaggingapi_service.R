service <- function () 
{
    cfg <- client_config("tagging", list(`*` = "tagging.{region}.amazonaws.com", 
        `cn-*` = "tagging.{region}.amazonaws.com.cn"))
    client_info <- ClientInfo(service_name = "tagging", service_id = "Resource Groups Tagging API", 
        api_version = "2017-01-26", signing_name = cfg$signing_name, 
        signing_region = cfg$signing_region, endpoint = cfg$endpoint, 
        json_version = "1.1", target_prefix = "ResourceGroupsTaggingAPI_20170126")
    handlers <- handlers(build = jsonrpc_build, sign = v4_sign_request_handler, 
        unmarshal = jsonrpc_unmarshal, unmarshal_meta = jsonrpc_unmarshal_meta, 
        unmarshal_error = jsonrpc_unmarshal_error)
    svc <- Client(config = cfg$config, client_info = client_info, 
        handlers = handlers)
    return(svc)
}
