create_cluster_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "ClusterName", 
        type = "string", max = 255L, min = 1L, pattern = "[A-Za-z0-9\\-_]*", 
        locationName = "name"), Version = structure(logical(0), 
        shape = "String", type = "string", locationName = "version"), 
        RoleArn = structure(logical(0), shape = "String", type = "string", 
            locationName = "roleArn"), ResourcesVpcConfig = structure(list(SubnetIds = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringList", 
            type = "list", locationName = "subnetIds"), SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringList", 
            type = "list", locationName = "securityGroupIds")), 
            shape = "VpcConfigRequest", type = "structure", locationName = "resourcesVpcConfig"), 
        ClientRequestToken = structure(logical(0), shape = "String", 
            idempotencyToken = TRUE, type = "string", locationName = "clientRequestToken")), 
        shape = "CreateClusterRequest", type = "structure")
    return(populate(args, shape))
}

create_cluster_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Cluster = structure(list(Name = structure(logical(0), 
        shape = "String", type = "string", locationName = "name"), 
        Arn = structure(logical(0), shape = "String", type = "string", 
            locationName = "arn"), CreatedAt = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "createdAt"), 
        Version = structure(logical(0), shape = "String", type = "string", 
            locationName = "version"), Endpoint = structure(logical(0), 
            shape = "String", type = "string", locationName = "endpoint"), 
        RoleArn = structure(logical(0), shape = "String", type = "string", 
            locationName = "roleArn"), ResourcesVpcConfig = structure(list(SubnetIds = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringList", 
            type = "list", locationName = "subnetIds"), SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringList", 
            type = "list", locationName = "securityGroupIds"), 
            VpcId = structure(logical(0), shape = "String", type = "string", 
                locationName = "vpcId")), shape = "VpcConfigResponse", 
            type = "structure", locationName = "resourcesVpcConfig"), 
        Status = structure(logical(0), shape = "ClusterStatus", 
            type = "string", locationName = "status"), CertificateAuthority = structure(list(Data = structure(logical(0), 
            shape = "String", type = "string", locationName = "data")), 
            shape = "Certificate", type = "structure", locationName = "certificateAuthority"), 
        ClientRequestToken = structure(logical(0), shape = "String", 
            type = "string", locationName = "clientRequestToken"), 
        PlatformVersion = structure(logical(0), shape = "String", 
            type = "string", locationName = "platformVersion")), 
        shape = "Cluster", type = "structure", locationName = "cluster")), 
        shape = "CreateClusterResponse", type = "structure")
    return(populate(args, shape))
}

delete_cluster_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "String", 
        location = "uri", locationName = "name", type = "string")), 
        shape = "DeleteClusterRequest", type = "structure")
    return(populate(args, shape))
}

delete_cluster_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Cluster = structure(list(Name = structure(logical(0), 
        shape = "String", type = "string", locationName = "name"), 
        Arn = structure(logical(0), shape = "String", type = "string", 
            locationName = "arn"), CreatedAt = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "createdAt"), 
        Version = structure(logical(0), shape = "String", type = "string", 
            locationName = "version"), Endpoint = structure(logical(0), 
            shape = "String", type = "string", locationName = "endpoint"), 
        RoleArn = structure(logical(0), shape = "String", type = "string", 
            locationName = "roleArn"), ResourcesVpcConfig = structure(list(SubnetIds = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringList", 
            type = "list", locationName = "subnetIds"), SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringList", 
            type = "list", locationName = "securityGroupIds"), 
            VpcId = structure(logical(0), shape = "String", type = "string", 
                locationName = "vpcId")), shape = "VpcConfigResponse", 
            type = "structure", locationName = "resourcesVpcConfig"), 
        Status = structure(logical(0), shape = "ClusterStatus", 
            type = "string", locationName = "status"), CertificateAuthority = structure(list(Data = structure(logical(0), 
            shape = "String", type = "string", locationName = "data")), 
            shape = "Certificate", type = "structure", locationName = "certificateAuthority"), 
        ClientRequestToken = structure(logical(0), shape = "String", 
            type = "string", locationName = "clientRequestToken"), 
        PlatformVersion = structure(logical(0), shape = "String", 
            type = "string", locationName = "platformVersion")), 
        shape = "Cluster", type = "structure", locationName = "cluster")), 
        shape = "DeleteClusterResponse", type = "structure")
    return(populate(args, shape))
}

describe_cluster_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "String", 
        location = "uri", locationName = "name", type = "string")), 
        shape = "DescribeClusterRequest", type = "structure")
    return(populate(args, shape))
}

describe_cluster_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Cluster = structure(list(Name = structure(logical(0), 
        shape = "String", type = "string", locationName = "name"), 
        Arn = structure(logical(0), shape = "String", type = "string", 
            locationName = "arn"), CreatedAt = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "createdAt"), 
        Version = structure(logical(0), shape = "String", type = "string", 
            locationName = "version"), Endpoint = structure(logical(0), 
            shape = "String", type = "string", locationName = "endpoint"), 
        RoleArn = structure(logical(0), shape = "String", type = "string", 
            locationName = "roleArn"), ResourcesVpcConfig = structure(list(SubnetIds = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringList", 
            type = "list", locationName = "subnetIds"), SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringList", 
            type = "list", locationName = "securityGroupIds"), 
            VpcId = structure(logical(0), shape = "String", type = "string", 
                locationName = "vpcId")), shape = "VpcConfigResponse", 
            type = "structure", locationName = "resourcesVpcConfig"), 
        Status = structure(logical(0), shape = "ClusterStatus", 
            type = "string", locationName = "status"), CertificateAuthority = structure(list(Data = structure(logical(0), 
            shape = "String", type = "string", locationName = "data")), 
            shape = "Certificate", type = "structure", locationName = "certificateAuthority"), 
        ClientRequestToken = structure(logical(0), shape = "String", 
            type = "string", locationName = "clientRequestToken"), 
        PlatformVersion = structure(logical(0), shape = "String", 
            type = "string", locationName = "platformVersion")), 
        shape = "Cluster", type = "structure", locationName = "cluster")), 
        shape = "DescribeClusterResponse", type = "structure")
    return(populate(args, shape))
}

list_clusters_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxResults = structure(logical(0), 
        shape = "ListClustersRequestMaxResults", location = "querystring", 
        locationName = "maxResults", type = "integer", box = TRUE, 
        max = 100L, min = 1L), NextToken = structure(logical(0), 
        shape = "String", location = "querystring", locationName = "nextToken", 
        type = "string")), shape = "ListClustersRequest", type = "structure")
    return(populate(args, shape))
}

list_clusters_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Clusters = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "StringList", 
        type = "list", locationName = "clusters"), NextToken = structure(logical(0), 
        shape = "String", type = "string", locationName = "nextToken")), 
        shape = "ListClustersResponse", type = "structure")
    return(populate(args, shape))
}
