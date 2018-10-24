service <- function () 
{
    cfg <- client_config("ec2", list(`*` = "ec2.{region}.amazonaws.com", 
        `cn-*` = "ec2.{region}.amazonaws.com.cn"))
    client_info <- ClientInfo(service_name = "ec2", service_id = "EC2", 
        api_version = "2016-11-15", signing_name = cfg$signing_name, 
        signing_region = cfg$signing_region, endpoint = cfg$endpoint, 
        json_version = NULL, target_prefix = NULL)
    handlers <- handlers(build = ec2query_build, sign = v4_sign_request_handler, 
        unmarshal = ec2query_unmarshal, unmarshal_meta = ec2query_unmarshal_meta, 
        unmarshal_error = ec2query_unmarshal_error)
    svc <- Client(config = cfg$config, client_info = client_info, 
        handlers = handlers)
    return(svc)
}
