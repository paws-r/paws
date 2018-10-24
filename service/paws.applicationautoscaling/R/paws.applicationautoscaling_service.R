service <- function () 
{
    cfg <- client_config("autoscaling", list(`*` = "autoscaling.{region}.amazonaws.com", 
        `cn-*` = "autoscaling.{region}.amazonaws.com.cn"))
    client_info <- ClientInfo(service_name = "autoscaling", service_id = "Application Auto Scaling", 
        api_version = "2016-02-06", signing_name = "application-autoscaling", 
        signing_region = cfg$signing_region, endpoint = cfg$endpoint, 
        json_version = "1.1", target_prefix = "AnyScaleFrontendService")
    handlers <- handlers(build = jsonrpc_build, sign = v4_sign_request_handler, 
        unmarshal = jsonrpc_unmarshal, unmarshal_meta = jsonrpc_unmarshal_meta, 
        unmarshal_error = jsonrpc_unmarshal_error)
    svc <- Client(config = cfg$config, client_info = client_info, 
        handlers = handlers)
    return(svc)
}
