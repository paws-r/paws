service <- function () 
{
    cfg <- client_config("rds", list(`*` = "rds.{region}.amazonaws.com", 
        `cn-*` = "rds.{region}.amazonaws.com.cn"))
    client_info <- ClientInfo(service_name = "rds", service_id = "RDS", 
        api_version = "2014-10-31", signing_name = cfg$signing_name, 
        signing_region = cfg$signing_region, endpoint = cfg$endpoint, 
        json_version = NULL, target_prefix = NULL)
    handlers <- handlers(build = query_build, sign = v4_sign_request_handler, 
        unmarshal = query_unmarshal, unmarshal_meta = query_unmarshal_meta, 
        unmarshal_error = query_unmarshal_error)
    svc <- Client(config = cfg$config, client_info = client_info, 
        handlers = handlers)
    return(svc)
}
