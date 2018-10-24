service <- function () 
{
    cfg <- client_config("elastictranscoder", list(`*` = "elastictranscoder.{region}.amazonaws.com", 
        `cn-*` = "elastictranscoder.{region}.amazonaws.com.cn"))
    client_info <- ClientInfo(service_name = "elastictranscoder", 
        service_id = "Elastic Transcoder", api_version = "2012-09-25", 
        signing_name = cfg$signing_name, signing_region = cfg$signing_region, 
        endpoint = cfg$endpoint, json_version = NULL, target_prefix = NULL)
    handlers <- handlers(build = restjson_build, sign = v4_sign_request_handler, 
        unmarshal = restjson_unmarshal, unmarshal_meta = restjson_unmarshal_meta, 
        unmarshal_error = restjson_unmarshal_error)
    svc <- Client(config = cfg$config, client_info = client_info, 
        handlers = handlers)
    return(svc)
}
