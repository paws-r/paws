service <- function () 
{
    cfg <- client_config("route53domains", list(`*` = "route53domains.{region}.amazonaws.com", 
        `cn-*` = "route53domains.{region}.amazonaws.com.cn"))
    client_info <- ClientInfo(service_name = "route53domains", 
        service_id = "Route 53 Domains", api_version = "2014-05-15", 
        signing_name = cfg$signing_name, signing_region = cfg$signing_region, 
        endpoint = cfg$endpoint, json_version = "1.1", target_prefix = "Route53Domains_v20140515")
    handlers <- handlers(build = jsonrpc_build, sign = v4_sign_request_handler, 
        unmarshal = jsonrpc_unmarshal, unmarshal_meta = jsonrpc_unmarshal_meta, 
        unmarshal_error = jsonrpc_unmarshal_error)
    svc <- Client(config = cfg$config, client_info = client_info, 
        handlers = handlers)
    return(svc)
}
