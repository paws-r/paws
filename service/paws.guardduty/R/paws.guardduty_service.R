service <- function () 
{
    cfg <- client_config("guardduty", list(`*` = "guardduty.{region}.amazonaws.com", 
        `cn-*` = "guardduty.{region}.amazonaws.com.cn"))
    client_info <- ClientInfo(service_name = "guardduty", service_id = "GuardDuty", 
        api_version = "2017-11-28", signing_name = "guardduty", 
        signing_region = cfg$signing_region, endpoint = cfg$endpoint, 
        json_version = "1.1", target_prefix = NULL)
    handlers <- handlers(build = restjson_build, sign = v4_sign_request_handler, 
        unmarshal = restjson_unmarshal, unmarshal_meta = restjson_unmarshal_meta, 
        unmarshal_error = restjson_unmarshal_error)
    svc <- Client(config = cfg$config, client_info = client_info, 
        handlers = handlers)
    return(svc)
}
