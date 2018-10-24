service <- function () 
{
    cfg <- client_config("comprehend", list(`*` = "comprehend.{region}.amazonaws.com", 
        `cn-*` = "comprehend.{region}.amazonaws.com.cn"))
    client_info <- ClientInfo(service_name = "comprehend", service_id = "Comprehend", 
        api_version = "2017-11-27", signing_name = "comprehend", 
        signing_region = cfg$signing_region, endpoint = cfg$endpoint, 
        json_version = "1.1", target_prefix = "Comprehend_20171127")
    handlers <- handlers(build = jsonrpc_build, sign = v4_sign_request_handler, 
        unmarshal = jsonrpc_unmarshal, unmarshal_meta = jsonrpc_unmarshal_meta, 
        unmarshal_error = jsonrpc_unmarshal_error)
    svc <- Client(config = cfg$config, client_info = client_info, 
        handlers = handlers)
    return(svc)
}
