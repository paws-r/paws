service <- function () 
{
    cfg <- client_config("marketplacecommerceanalytics", list(
        `*` = "marketplacecommerceanalytics.{region}.amazonaws.com", 
        `cn-*` = "marketplacecommerceanalytics.{region}.amazonaws.com.cn"))
    client_info <- ClientInfo(service_name = "marketplacecommerceanalytics", 
        service_id = "Marketplace Commerce Analytics", api_version = "2015-07-01", 
        signing_name = "marketplacecommerceanalytics", signing_region = cfg$signing_region, 
        endpoint = cfg$endpoint, json_version = "1.1", target_prefix = "MarketplaceCommerceAnalytics20150701")
    handlers <- handlers(build = jsonrpc_build, sign = v4_sign_request_handler, 
        unmarshal = jsonrpc_unmarshal, unmarshal_meta = jsonrpc_unmarshal_meta, 
        unmarshal_error = jsonrpc_unmarshal_error)
    svc <- Client(config = cfg$config, client_info = client_info, 
        handlers = handlers)
    return(svc)
}
