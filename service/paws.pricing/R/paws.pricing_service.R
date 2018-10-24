service <- function () 
{
    cfg <- client_config("api.pricing", list(`*` = "api.pricing.{region}.amazonaws.com", 
        `cn-*` = "api.pricing.{region}.amazonaws.com.cn"))
    client_info <- ClientInfo(service_name = "api.pricing", service_id = "Pricing", 
        api_version = "2017-10-15", signing_name = "pricing", 
        signing_region = cfg$signing_region, endpoint = cfg$endpoint, 
        json_version = "1.1", target_prefix = "AWSPriceListService")
    handlers <- handlers(build = jsonrpc_build, sign = v4_sign_request_handler, 
        unmarshal = jsonrpc_unmarshal, unmarshal_meta = jsonrpc_unmarshal_meta, 
        unmarshal_error = jsonrpc_unmarshal_error)
    svc <- Client(config = cfg$config, client_info = client_info, 
        handlers = handlers)
    return(svc)
}
