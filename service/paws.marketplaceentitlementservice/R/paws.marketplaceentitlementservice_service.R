service <- function () 
{
    cfg <- client_config("entitlement.marketplace", list(`*` = "entitlement.marketplace.{region}.amazonaws.com", 
        `cn-*` = "entitlement.marketplace.{region}.amazonaws.com.cn"))
    client_info <- ClientInfo(service_name = "entitlement.marketplace", 
        service_id = "Marketplace Entitlement Service", api_version = "2017-01-11", 
        signing_name = "aws-marketplace", signing_region = cfg$signing_region, 
        endpoint = cfg$endpoint, json_version = "1.1", target_prefix = "AWSMPEntitlementService")
    handlers <- handlers(build = jsonrpc_build, sign = v4_sign_request_handler, 
        unmarshal = jsonrpc_unmarshal, unmarshal_meta = jsonrpc_unmarshal_meta, 
        unmarshal_error = jsonrpc_unmarshal_error)
    svc <- Client(config = cfg$config, client_info = client_info, 
        handlers = handlers)
    return(svc)
}
