service <- function () 
{
    cfg <- client_config("secretsmanager", list(`*` = "secretsmanager.{region}.amazonaws.com", 
        `cn-*` = "secretsmanager.{region}.amazonaws.com.cn"))
    client_info <- ClientInfo(service_name = "secretsmanager", 
        service_id = "Secrets Manager", api_version = "2017-10-17", 
        signing_name = "secretsmanager", signing_region = cfg$signing_region, 
        endpoint = cfg$endpoint, json_version = "1.1", target_prefix = "secretsmanager")
    handlers <- handlers(build = jsonrpc_build, sign = v4_sign_request_handler, 
        unmarshal = jsonrpc_unmarshal, unmarshal_meta = jsonrpc_unmarshal_meta, 
        unmarshal_error = jsonrpc_unmarshal_error)
    svc <- Client(config = cfg$config, client_info = client_info, 
        handlers = handlers)
    return(svc)
}
