service <- function () 
{
    cfg <- client_config("dax", list(`*` = "dax.{region}.amazonaws.com", 
        `cn-*` = "dax.{region}.amazonaws.com.cn"))
    client_info <- ClientInfo(service_name = "dax", service_id = "DAX", 
        api_version = "2017-04-19", signing_name = cfg$signing_name, 
        signing_region = cfg$signing_region, endpoint = cfg$endpoint, 
        json_version = "1.1", target_prefix = "AmazonDAXV3")
    handlers <- handlers(build = jsonrpc_build, sign = v4_sign_request_handler, 
        unmarshal = jsonrpc_unmarshal, unmarshal_meta = jsonrpc_unmarshal_meta, 
        unmarshal_error = jsonrpc_unmarshal_error)
    svc <- Client(config = cfg$config, client_info = client_info, 
        handlers = handlers)
    return(svc)
}
