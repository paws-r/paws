service <- function () 
{
    cfg <- client_config("metering.marketplace", list(`*` = "metering.marketplace.{region}.amazonaws.com", 
        `cn-*` = "metering.marketplace.{region}.amazonaws.com.cn"))
    client_info <- ClientInfo(service_name = "metering.marketplace", 
        service_id = "Marketplace Metering", api_version = "2016-01-14", 
        signing_name = "aws-marketplace", signing_region = cfg$signing_region, 
        endpoint = cfg$endpoint, json_version = "1.1", target_prefix = "AWSMPMeteringService")
    handlers <- handlers(build = jsonrpc_build, sign = v4_sign_request_handler, 
        unmarshal = jsonrpc_unmarshal, unmarshal_meta = jsonrpc_unmarshal_meta, 
        unmarshal_error = jsonrpc_unmarshal_error)
    svc <- Client(config = cfg$config, client_info = client_info, 
        handlers = handlers)
    return(svc)
}
