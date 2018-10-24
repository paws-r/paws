service <- function () 
{
    cfg <- client_config("projects.iot1click", list(`*` = "projects.iot1click.{region}.amazonaws.com", 
        `cn-*` = "projects.iot1click.{region}.amazonaws.com.cn"))
    client_info <- ClientInfo(service_name = "projects.iot1click", 
        service_id = "IoT 1Click Projects", api_version = "2018-05-14", 
        signing_name = "iot1click", signing_region = cfg$signing_region, 
        endpoint = cfg$endpoint, json_version = "1.1", target_prefix = NULL)
    handlers <- handlers(build = restjson_build, sign = v4_sign_request_handler, 
        unmarshal = restjson_unmarshal, unmarshal_meta = restjson_unmarshal_meta, 
        unmarshal_error = restjson_unmarshal_error)
    svc <- Client(config = cfg$config, client_info = client_info, 
        handlers = handlers)
    return(svc)
}
