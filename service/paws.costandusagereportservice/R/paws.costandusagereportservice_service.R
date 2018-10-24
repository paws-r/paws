service <- function () 
{
    cfg <- client_config("cur", list(`*` = "cur.{region}.amazonaws.com", 
        `cn-*` = "cur.{region}.amazonaws.com.cn"))
    client_info <- ClientInfo(service_name = "cur", service_id = "Cost and Usage Report Service", 
        api_version = "2017-01-06", signing_name = "cur", signing_region = cfg$signing_region, 
        endpoint = cfg$endpoint, json_version = "1.1", target_prefix = "AWSOrigamiServiceGatewayService")
    handlers <- handlers(build = jsonrpc_build, sign = v4_sign_request_handler, 
        unmarshal = jsonrpc_unmarshal, unmarshal_meta = jsonrpc_unmarshal_meta, 
        unmarshal_error = jsonrpc_unmarshal_error)
    svc <- Client(config = cfg$config, client_info = client_info, 
        handlers = handlers)
    return(svc)
}
