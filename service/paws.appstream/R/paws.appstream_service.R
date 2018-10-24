service <- function () 
{
    cfg <- client_config("appstream2", list(`*` = "appstream2.{region}.amazonaws.com", 
        `cn-*` = "appstream2.{region}.amazonaws.com.cn"))
    client_info <- ClientInfo(service_name = "appstream2", service_id = "AppStream", 
        api_version = "2016-12-01", signing_name = "appstream", 
        signing_region = cfg$signing_region, endpoint = cfg$endpoint, 
        json_version = "1.1", target_prefix = "PhotonAdminProxyService")
    handlers <- handlers(build = jsonrpc_build, sign = v4_sign_request_handler, 
        unmarshal = jsonrpc_unmarshal, unmarshal_meta = jsonrpc_unmarshal_meta, 
        unmarshal_error = jsonrpc_unmarshal_error)
    svc <- Client(config = cfg$config, client_info = client_info, 
        handlers = handlers)
    return(svc)
}
