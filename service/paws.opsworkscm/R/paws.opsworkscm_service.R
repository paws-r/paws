service <- function () 
{
    cfg <- client_config("opsworks-cm", list(`*` = "opsworks-cm.{region}.amazonaws.com", 
        `cn-*` = "opsworks-cm.{region}.amazonaws.com.cn"))
    client_info <- ClientInfo(service_name = "opsworks-cm", service_id = "OpsWorksCM", 
        api_version = "2016-11-01", signing_name = "opsworks-cm", 
        signing_region = cfg$signing_region, endpoint = cfg$endpoint, 
        json_version = "1.1", target_prefix = "OpsWorksCM_V2016_11_01")
    handlers <- handlers(build = jsonrpc_build, sign = v4_sign_request_handler, 
        unmarshal = jsonrpc_unmarshal, unmarshal_meta = jsonrpc_unmarshal_meta, 
        unmarshal_error = jsonrpc_unmarshal_error)
    svc <- Client(config = cfg$config, client_info = client_info, 
        handlers = handlers)
    return(svc)
}
