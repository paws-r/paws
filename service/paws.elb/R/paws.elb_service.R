service <- function () 
{
    cfg <- client_config("elasticloadbalancing", list(`*` = "elasticloadbalancing.{region}.amazonaws.com", 
        `cn-*` = "elasticloadbalancing.{region}.amazonaws.com.cn"))
    client_info <- ClientInfo(service_name = "elasticloadbalancing", 
        service_id = "Elastic Load Balancing", api_version = "2012-06-01", 
        signing_name = cfg$signing_name, signing_region = cfg$signing_region, 
        endpoint = cfg$endpoint, json_version = NULL, target_prefix = NULL)
    handlers <- handlers(build = query_build, sign = v4_sign_request_handler, 
        unmarshal = query_unmarshal, unmarshal_meta = query_unmarshal_meta, 
        unmarshal_error = query_unmarshal_error)
    svc <- Client(config = cfg$config, client_info = client_info, 
        handlers = handlers)
    return(svc)
}
