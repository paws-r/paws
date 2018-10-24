#' Creates a storage container to hold objects
#'
#' Creates a storage container to hold objects. A container is similar to a bucket in the Amazon S3 service.
#'
#' @param ContainerName The name for the container. The name must be from 1 to 255 characters. Container names must be unique to your AWS account within a specific region. As an example, you could create a container named `movies` in every region, as long as you don't have an existing container with that name.
#'
#' @examples
#'
#' @export
create_container <- function (ContainerName) 
{
    op <- Operation(name = "CreateContainer", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_container_input(ContainerName = ContainerName)
    output <- create_container_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified container
#'
#' Deletes the specified container. Before you make a `DeleteContainer` request, delete any objects in the container or in any folders in the container. You can delete only empty containers.
#'
#' @param ContainerName The name of the container to delete.
#'
#' @examples
#'
#' @export
delete_container <- function (ContainerName) 
{
    op <- Operation(name = "DeleteContainer", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_container_input(ContainerName = ContainerName)
    output <- delete_container_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the access policy that is associated with the specified container
#'
#' Deletes the access policy that is associated with the specified container.
#'
#' @param ContainerName The name of the container that holds the policy.
#'
#' @examples
#'
#' @export
delete_container_policy <- function (ContainerName) 
{
    op <- Operation(name = "DeleteContainerPolicy", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_container_policy_input(ContainerName = ContainerName)
    output <- delete_container_policy_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the cross-origin resource sharing (CORS) configuration information that is set for the container
#'
#' Deletes the cross-origin resource sharing (CORS) configuration information that is set for the container.
#' 
#' To use this operation, you must have permission to perform the `MediaStore:DeleteCorsPolicy` action. The container owner has this permission by default and can grant this permission to others.
#'
#' @param ContainerName The name of the container to remove the policy from.
#'
#' @examples
#'
#' @export
delete_cors_policy <- function (ContainerName) 
{
    op <- Operation(name = "DeleteCorsPolicy", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_cors_policy_input(ContainerName = ContainerName)
    output <- delete_cors_policy_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves the properties of the requested container
#'
#' Retrieves the properties of the requested container. This request is commonly used to retrieve the endpoint of a container. An endpoint is a value assigned by the service when a new container is created. A container\'s endpoint does not change after it has been assigned. The `DescribeContainer` request returns a single `Container` object based on `ContainerName`. To return all `Container` objects that are associated with a specified AWS account, use ListContainers.
#'
#' @param ContainerName The name of the container to query.
#'
#' @examples
#'
#' @export
describe_container <- function (ContainerName = NULL) 
{
    op <- Operation(name = "DescribeContainer", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_container_input(ContainerName = ContainerName)
    output <- describe_container_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves the access policy for the specified container
#'
#' Retrieves the access policy for the specified container. For information about the data that is included in an access policy, see the [AWS Identity and Access Management User Guide](https://aws.amazon.com/documentation/iam/).
#'
#' @param ContainerName The name of the container.
#'
#' @examples
#'
#' @export
get_container_policy <- function (ContainerName) 
{
    op <- Operation(name = "GetContainerPolicy", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_container_policy_input(ContainerName = ContainerName)
    output <- get_container_policy_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the cross-origin resource sharing (CORS) configuration information that is set for the container
#'
#' Returns the cross-origin resource sharing (CORS) configuration information that is set for the container.
#' 
#' To use this operation, you must have permission to perform the `MediaStore:GetCorsPolicy` action. By default, the container owner has this permission and can grant it to others.
#'
#' @param ContainerName The name of the container that the policy is assigned to.
#'
#' @examples
#'
#' @export
get_cors_policy <- function (ContainerName) 
{
    op <- Operation(name = "GetCorsPolicy", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_cors_policy_input(ContainerName = ContainerName)
    output <- get_cors_policy_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the properties of all containers in AWS Elemental MediaStore
#'
#' Lists the properties of all containers in AWS Elemental MediaStore.
#' 
#' You can query to receive all the containers in one response. Or you can include the `MaxResults` parameter to receive a limited number of containers in each response. In this case, the response includes a token. To get the next set of containers, send the command again, this time with the `NextToken` parameter (with the returned token as its value). The next set of responses appears, with a token if there are still more containers to receive.
#' 
#' See also DescribeContainer, which gets the properties of one container.
#'
#' @param NextToken Only if you used `MaxResults` in the first command, enter the token (which was included in the previous response) to obtain the next set of containers. This token is included in a response only if there actually are more containers to list.
#' @param MaxResults Enter the maximum number of containers in the response. Use from 1 to 255 characters.
#'
#' @examples
#'
#' @export
list_containers <- function (NextToken = NULL, MaxResults = NULL) 
{
    op <- Operation(name = "ListContainers", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_containers_input(NextToken = NextToken, MaxResults = MaxResults)
    output <- list_containers_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates an access policy for the specified container to restrict the users and clients that can access it
#'
#' Creates an access policy for the specified container to restrict the users and clients that can access it. For information about the data that is included in an access policy, see the [AWS Identity and Access Management User Guide](https://aws.amazon.com/documentation/iam/).
#' 
#' For this release of the REST API, you can create only one policy for a container. If you enter `PutContainerPolicy` twice, the second command modifies the existing policy.
#'
#' @param ContainerName The name of the container.
#' @param Policy The contents of the policy, which includes the following:
#' 
#' -   One `Version` tag
#' 
#' -   One `Statement` tag that contains the standard tags for the policy.
#'
#' @examples
#'
#' @export
put_container_policy <- function (ContainerName, Policy) 
{
    op <- Operation(name = "PutContainerPolicy", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- put_container_policy_input(ContainerName = ContainerName, 
        Policy = Policy)
    output <- put_container_policy_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Sets the cross-origin resource sharing (CORS) configuration on a container so that the container can service cross-origin requests
#'
#' Sets the cross-origin resource sharing (CORS) configuration on a container so that the container can service cross-origin requests. For example, you might want to enable a request whose origin is http://www.example.com to access your AWS Elemental MediaStore container at my.example.container.com by using the browser\'s XMLHttpRequest capability.
#' 
#' To enable CORS on a container, you attach a CORS policy to the container. In the CORS policy, you configure rules that identify origins and the HTTP methods that can be executed on your container. The policy can contain up to 398,000 characters. You can add up to 100 rules to a CORS policy. If more than one rule applies, the service uses the first applicable rule listed.
#'
#' @param ContainerName The name of the container that you want to assign the CORS policy to.
#' @param CorsPolicy The CORS policy to apply to the container.
#'
#' @examples
#'
#' @export
put_cors_policy <- function (ContainerName, CorsPolicy) 
{
    op <- Operation(name = "PutCorsPolicy", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- put_cors_policy_input(ContainerName = ContainerName, 
        CorsPolicy = CorsPolicy)
    output <- put_cors_policy_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
