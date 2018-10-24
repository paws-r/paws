cancel_cluster_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterId = structure(logical(0), 
        shape = "ClusterId", type = "string", max = 39L, min = 39L, 
        pattern = "CID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}")), 
        shape = "CancelClusterRequest", type = "structure")
    return(populate(args, shape))
}

cancel_cluster_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CancelClusterResult", 
        type = "structure")
    return(populate(args, shape))
}

cancel_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string", max = 39L, min = 39L, pattern = "(M|J)ID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}")), 
        shape = "CancelJobRequest", type = "structure")
    return(populate(args, shape))
}

cancel_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CancelJobResult", type = "structure")
    return(populate(args, shape))
}

create_address_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Address = structure(list(AddressId = structure(logical(0), 
        shape = "AddressId", type = "string", max = 40L, min = 40L, 
        pattern = "ADID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}"), 
        Name = structure(logical(0), shape = "String", type = "string", 
            min = 1L), Company = structure(logical(0), shape = "String", 
            type = "string", min = 1L), Street1 = structure(logical(0), 
            shape = "String", type = "string", min = 1L), Street2 = structure(logical(0), 
            shape = "String", type = "string", min = 1L), Street3 = structure(logical(0), 
            shape = "String", type = "string", min = 1L), City = structure(logical(0), 
            shape = "String", type = "string", min = 1L), StateOrProvince = structure(logical(0), 
            shape = "String", type = "string", min = 1L), PrefectureOrDistrict = structure(logical(0), 
            shape = "String", type = "string", min = 1L), Landmark = structure(logical(0), 
            shape = "String", type = "string", min = 1L), Country = structure(logical(0), 
            shape = "String", type = "string", min = 1L), PostalCode = structure(logical(0), 
            shape = "String", type = "string", min = 1L), PhoneNumber = structure(logical(0), 
            shape = "String", type = "string", min = 1L), IsRestricted = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "Address", 
        type = "structure")), shape = "CreateAddressRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_address_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AddressId = structure(logical(0), 
        shape = "String", type = "string", min = 1L)), shape = "CreateAddressResult", 
        type = "structure")
    return(populate(args, shape))
}

create_cluster_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobType = structure(logical(0), shape = "JobType", 
        type = "string"), Resources = structure(list(S3Resources = structure(list(structure(list(BucketArn = structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 255L), 
        KeyRange = structure(list(BeginMarker = structure(logical(0), 
            shape = "String", type = "string", min = 1L), EndMarker = structure(logical(0), 
            shape = "String", type = "string", min = 1L)), shape = "KeyRange", 
            type = "structure")), shape = "S3Resource", type = "structure")), 
        shape = "S3ResourceList", type = "list"), LambdaResources = structure(list(structure(list(LambdaArn = structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 255L), 
        EventTriggers = structure(list(structure(list(EventResourceARN = structure(logical(0), 
            shape = "ResourceARN", type = "string", max = 255L)), 
            shape = "EventTriggerDefinition", type = "structure")), 
            shape = "EventTriggerDefinitionList", type = "list")), 
        shape = "LambdaResource", type = "structure")), shape = "LambdaResourceList", 
        type = "list"), Ec2AmiResources = structure(list(structure(list(AmiId = structure(logical(0), 
        shape = "AmiId", type = "string", max = 21L, min = 12L, 
        pattern = "(ami-[0-9a-f]{8})|(ami-[0-9a-f]{17})"), SnowballAmiId = structure(logical(0), 
        shape = "String", type = "string", min = 1L)), shape = "Ec2AmiResource", 
        type = "structure")), shape = "Ec2AmiResourceList", type = "list")), 
        shape = "JobResource", type = "structure"), Description = structure(logical(0), 
        shape = "String", type = "string", min = 1L), AddressId = structure(logical(0), 
        shape = "AddressId", type = "string", max = 40L, min = 40L, 
        pattern = "ADID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}"), 
        KmsKeyARN = structure(logical(0), shape = "KmsKeyARN", 
            type = "string", max = 255L, pattern = "arn:aws.*:kms:.*:[0-9]{12}:key/.*"), 
        RoleARN = structure(logical(0), shape = "RoleARN", type = "string", 
            max = 255L, pattern = "arn:aws.*:iam::[0-9]{12}:role/.*"), 
        SnowballType = structure(logical(0), shape = "SnowballType", 
            type = "string"), ShippingOption = structure(logical(0), 
            shape = "ShippingOption", type = "string"), Notification = structure(list(SnsTopicARN = structure(logical(0), 
            shape = "SnsTopicARN", type = "string", max = 255L, 
            pattern = "arn:aws.*:sns:.*:[0-9]{12}:.*"), JobStatesToNotify = structure(list(structure(logical(0), 
            shape = "JobState", type = "string")), shape = "JobStateList", 
            type = "list"), NotifyAll = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "Notification", 
            type = "structure"), ForwardingAddressId = structure(logical(0), 
            shape = "AddressId", type = "string", max = 40L, 
            min = 40L, pattern = "ADID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}")), 
        shape = "CreateClusterRequest", type = "structure")
    return(populate(args, shape))
}

create_cluster_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterId = structure(logical(0), 
        shape = "ClusterId", type = "string", max = 39L, min = 39L, 
        pattern = "CID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}")), 
        shape = "CreateClusterResult", type = "structure")
    return(populate(args, shape))
}

create_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobType = structure(logical(0), shape = "JobType", 
        type = "string"), Resources = structure(list(S3Resources = structure(list(structure(list(BucketArn = structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 255L), 
        KeyRange = structure(list(BeginMarker = structure(logical(0), 
            shape = "String", type = "string", min = 1L), EndMarker = structure(logical(0), 
            shape = "String", type = "string", min = 1L)), shape = "KeyRange", 
            type = "structure")), shape = "S3Resource", type = "structure")), 
        shape = "S3ResourceList", type = "list"), LambdaResources = structure(list(structure(list(LambdaArn = structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 255L), 
        EventTriggers = structure(list(structure(list(EventResourceARN = structure(logical(0), 
            shape = "ResourceARN", type = "string", max = 255L)), 
            shape = "EventTriggerDefinition", type = "structure")), 
            shape = "EventTriggerDefinitionList", type = "list")), 
        shape = "LambdaResource", type = "structure")), shape = "LambdaResourceList", 
        type = "list"), Ec2AmiResources = structure(list(structure(list(AmiId = structure(logical(0), 
        shape = "AmiId", type = "string", max = 21L, min = 12L, 
        pattern = "(ami-[0-9a-f]{8})|(ami-[0-9a-f]{17})"), SnowballAmiId = structure(logical(0), 
        shape = "String", type = "string", min = 1L)), shape = "Ec2AmiResource", 
        type = "structure")), shape = "Ec2AmiResourceList", type = "list")), 
        shape = "JobResource", type = "structure"), Description = structure(logical(0), 
        shape = "String", type = "string", min = 1L), AddressId = structure(logical(0), 
        shape = "AddressId", type = "string", max = 40L, min = 40L, 
        pattern = "ADID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}"), 
        KmsKeyARN = structure(logical(0), shape = "KmsKeyARN", 
            type = "string", max = 255L, pattern = "arn:aws.*:kms:.*:[0-9]{12}:key/.*"), 
        RoleARN = structure(logical(0), shape = "RoleARN", type = "string", 
            max = 255L, pattern = "arn:aws.*:iam::[0-9]{12}:role/.*"), 
        SnowballCapacityPreference = structure(logical(0), shape = "SnowballCapacity", 
            type = "string"), ShippingOption = structure(logical(0), 
            shape = "ShippingOption", type = "string"), Notification = structure(list(SnsTopicARN = structure(logical(0), 
            shape = "SnsTopicARN", type = "string", max = 255L, 
            pattern = "arn:aws.*:sns:.*:[0-9]{12}:.*"), JobStatesToNotify = structure(list(structure(logical(0), 
            shape = "JobState", type = "string")), shape = "JobStateList", 
            type = "list"), NotifyAll = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "Notification", 
            type = "structure"), ClusterId = structure(logical(0), 
            shape = "ClusterId", type = "string", max = 39L, 
            min = 39L, pattern = "CID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}"), 
        SnowballType = structure(logical(0), shape = "SnowballType", 
            type = "string"), ForwardingAddressId = structure(logical(0), 
            shape = "AddressId", type = "string", max = 40L, 
            min = 40L, pattern = "ADID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}")), 
        shape = "CreateJobRequest", type = "structure")
    return(populate(args, shape))
}

create_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string", max = 39L, min = 39L, pattern = "(M|J)ID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}")), 
        shape = "CreateJobResult", type = "structure")
    return(populate(args, shape))
}

describe_address_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AddressId = structure(logical(0), 
        shape = "AddressId", type = "string", max = 40L, min = 40L, 
        pattern = "ADID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}")), 
        shape = "DescribeAddressRequest", type = "structure")
    return(populate(args, shape))
}

describe_address_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Address = structure(list(AddressId = structure(logical(0), 
        shape = "AddressId", type = "string", max = 40L, min = 40L, 
        pattern = "ADID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}"), 
        Name = structure(logical(0), shape = "String", type = "string", 
            min = 1L), Company = structure(logical(0), shape = "String", 
            type = "string", min = 1L), Street1 = structure(logical(0), 
            shape = "String", type = "string", min = 1L), Street2 = structure(logical(0), 
            shape = "String", type = "string", min = 1L), Street3 = structure(logical(0), 
            shape = "String", type = "string", min = 1L), City = structure(logical(0), 
            shape = "String", type = "string", min = 1L), StateOrProvince = structure(logical(0), 
            shape = "String", type = "string", min = 1L), PrefectureOrDistrict = structure(logical(0), 
            shape = "String", type = "string", min = 1L), Landmark = structure(logical(0), 
            shape = "String", type = "string", min = 1L), Country = structure(logical(0), 
            shape = "String", type = "string", min = 1L), PostalCode = structure(logical(0), 
            shape = "String", type = "string", min = 1L), PhoneNumber = structure(logical(0), 
            shape = "String", type = "string", min = 1L), IsRestricted = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "Address", 
        type = "structure")), shape = "DescribeAddressResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_addresses_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxResults = structure(logical(0), 
        shape = "ListLimit", type = "integer", max = 100L, min = 0L), 
        NextToken = structure(logical(0), shape = "String", type = "string", 
            min = 1L)), shape = "DescribeAddressesRequest", type = "structure")
    return(populate(args, shape))
}

describe_addresses_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Addresses = structure(list(structure(list(AddressId = structure(logical(0), 
        shape = "AddressId", type = "string", max = 40L, min = 40L, 
        pattern = "ADID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}"), 
        Name = structure(logical(0), shape = "String", type = "string", 
            min = 1L), Company = structure(logical(0), shape = "String", 
            type = "string", min = 1L), Street1 = structure(logical(0), 
            shape = "String", type = "string", min = 1L), Street2 = structure(logical(0), 
            shape = "String", type = "string", min = 1L), Street3 = structure(logical(0), 
            shape = "String", type = "string", min = 1L), City = structure(logical(0), 
            shape = "String", type = "string", min = 1L), StateOrProvince = structure(logical(0), 
            shape = "String", type = "string", min = 1L), PrefectureOrDistrict = structure(logical(0), 
            shape = "String", type = "string", min = 1L), Landmark = structure(logical(0), 
            shape = "String", type = "string", min = 1L), Country = structure(logical(0), 
            shape = "String", type = "string", min = 1L), PostalCode = structure(logical(0), 
            shape = "String", type = "string", min = 1L), PhoneNumber = structure(logical(0), 
            shape = "String", type = "string", min = 1L), IsRestricted = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "Address", 
        type = "structure")), shape = "AddressList", type = "list"), 
        NextToken = structure(logical(0), shape = "String", type = "string", 
            min = 1L)), shape = "DescribeAddressesResult", type = "structure")
    return(populate(args, shape))
}

describe_cluster_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterId = structure(logical(0), 
        shape = "ClusterId", type = "string", max = 39L, min = 39L, 
        pattern = "CID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}")), 
        shape = "DescribeClusterRequest", type = "structure")
    return(populate(args, shape))
}

describe_cluster_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterMetadata = structure(list(ClusterId = structure(logical(0), 
        shape = "String", type = "string", min = 1L), Description = structure(logical(0), 
        shape = "String", type = "string", min = 1L), KmsKeyARN = structure(logical(0), 
        shape = "KmsKeyARN", type = "string", max = 255L, pattern = "arn:aws.*:kms:.*:[0-9]{12}:key/.*"), 
        RoleARN = structure(logical(0), shape = "RoleARN", type = "string", 
            max = 255L, pattern = "arn:aws.*:iam::[0-9]{12}:role/.*"), 
        ClusterState = structure(logical(0), shape = "ClusterState", 
            type = "string"), JobType = structure(logical(0), 
            shape = "JobType", type = "string"), SnowballType = structure(logical(0), 
            shape = "SnowballType", type = "string"), CreationDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), Resources = structure(list(S3Resources = structure(list(structure(list(BucketArn = structure(logical(0), 
            shape = "ResourceARN", type = "string", max = 255L), 
            KeyRange = structure(list(BeginMarker = structure(logical(0), 
                shape = "String", type = "string", min = 1L), 
                EndMarker = structure(logical(0), shape = "String", 
                  type = "string", min = 1L)), shape = "KeyRange", 
                type = "structure")), shape = "S3Resource", type = "structure")), 
            shape = "S3ResourceList", type = "list"), LambdaResources = structure(list(structure(list(LambdaArn = structure(logical(0), 
            shape = "ResourceARN", type = "string", max = 255L), 
            EventTriggers = structure(list(structure(list(EventResourceARN = structure(logical(0), 
                shape = "ResourceARN", type = "string", max = 255L)), 
                shape = "EventTriggerDefinition", type = "structure")), 
                shape = "EventTriggerDefinitionList", type = "list")), 
            shape = "LambdaResource", type = "structure")), shape = "LambdaResourceList", 
            type = "list"), Ec2AmiResources = structure(list(structure(list(AmiId = structure(logical(0), 
            shape = "AmiId", type = "string", max = 21L, min = 12L, 
            pattern = "(ami-[0-9a-f]{8})|(ami-[0-9a-f]{17})"), 
            SnowballAmiId = structure(logical(0), shape = "String", 
                type = "string", min = 1L)), shape = "Ec2AmiResource", 
            type = "structure")), shape = "Ec2AmiResourceList", 
            type = "list")), shape = "JobResource", type = "structure"), 
        AddressId = structure(logical(0), shape = "AddressId", 
            type = "string", max = 40L, min = 40L, pattern = "ADID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}"), 
        ShippingOption = structure(logical(0), shape = "ShippingOption", 
            type = "string"), Notification = structure(list(SnsTopicARN = structure(logical(0), 
            shape = "SnsTopicARN", type = "string", max = 255L, 
            pattern = "arn:aws.*:sns:.*:[0-9]{12}:.*"), JobStatesToNotify = structure(list(structure(logical(0), 
            shape = "JobState", type = "string")), shape = "JobStateList", 
            type = "list"), NotifyAll = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "Notification", 
            type = "structure"), ForwardingAddressId = structure(logical(0), 
            shape = "AddressId", type = "string", max = 40L, 
            min = 40L, pattern = "ADID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}")), 
        shape = "ClusterMetadata", type = "structure")), shape = "DescribeClusterResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string", max = 39L, min = 39L, pattern = "(M|J)ID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}")), 
        shape = "DescribeJobRequest", type = "structure")
    return(populate(args, shape))
}

describe_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobMetadata = structure(list(JobId = structure(logical(0), 
        shape = "String", type = "string", min = 1L), JobState = structure(logical(0), 
        shape = "JobState", type = "string"), JobType = structure(logical(0), 
        shape = "JobType", type = "string"), SnowballType = structure(logical(0), 
        shape = "SnowballType", type = "string"), CreationDate = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), Resources = structure(list(S3Resources = structure(list(structure(list(BucketArn = structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 255L), 
        KeyRange = structure(list(BeginMarker = structure(logical(0), 
            shape = "String", type = "string", min = 1L), EndMarker = structure(logical(0), 
            shape = "String", type = "string", min = 1L)), shape = "KeyRange", 
            type = "structure")), shape = "S3Resource", type = "structure")), 
        shape = "S3ResourceList", type = "list"), LambdaResources = structure(list(structure(list(LambdaArn = structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 255L), 
        EventTriggers = structure(list(structure(list(EventResourceARN = structure(logical(0), 
            shape = "ResourceARN", type = "string", max = 255L)), 
            shape = "EventTriggerDefinition", type = "structure")), 
            shape = "EventTriggerDefinitionList", type = "list")), 
        shape = "LambdaResource", type = "structure")), shape = "LambdaResourceList", 
        type = "list"), Ec2AmiResources = structure(list(structure(list(AmiId = structure(logical(0), 
        shape = "AmiId", type = "string", max = 21L, min = 12L, 
        pattern = "(ami-[0-9a-f]{8})|(ami-[0-9a-f]{17})"), SnowballAmiId = structure(logical(0), 
        shape = "String", type = "string", min = 1L)), shape = "Ec2AmiResource", 
        type = "structure")), shape = "Ec2AmiResourceList", type = "list")), 
        shape = "JobResource", type = "structure"), Description = structure(logical(0), 
        shape = "String", type = "string", min = 1L), KmsKeyARN = structure(logical(0), 
        shape = "KmsKeyARN", type = "string", max = 255L, pattern = "arn:aws.*:kms:.*:[0-9]{12}:key/.*"), 
        RoleARN = structure(logical(0), shape = "RoleARN", type = "string", 
            max = 255L, pattern = "arn:aws.*:iam::[0-9]{12}:role/.*"), 
        AddressId = structure(logical(0), shape = "AddressId", 
            type = "string", max = 40L, min = 40L, pattern = "ADID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}"), 
        ShippingDetails = structure(list(ShippingOption = structure(logical(0), 
            shape = "ShippingOption", type = "string"), InboundShipment = structure(list(Status = structure(logical(0), 
            shape = "String", type = "string", min = 1L), TrackingNumber = structure(logical(0), 
            shape = "String", type = "string", min = 1L)), shape = "Shipment", 
            type = "structure"), OutboundShipment = structure(list(Status = structure(logical(0), 
            shape = "String", type = "string", min = 1L), TrackingNumber = structure(logical(0), 
            shape = "String", type = "string", min = 1L)), shape = "Shipment", 
            type = "structure")), shape = "ShippingDetails", 
            type = "structure"), SnowballCapacityPreference = structure(logical(0), 
            shape = "SnowballCapacity", type = "string"), Notification = structure(list(SnsTopicARN = structure(logical(0), 
            shape = "SnsTopicARN", type = "string", max = 255L, 
            pattern = "arn:aws.*:sns:.*:[0-9]{12}:.*"), JobStatesToNotify = structure(list(structure(logical(0), 
            shape = "JobState", type = "string")), shape = "JobStateList", 
            type = "list"), NotifyAll = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "Notification", 
            type = "structure"), DataTransferProgress = structure(list(BytesTransferred = structure(logical(0), 
            shape = "Long", type = "long"), ObjectsTransferred = structure(logical(0), 
            shape = "Long", type = "long"), TotalBytes = structure(logical(0), 
            shape = "Long", type = "long"), TotalObjects = structure(logical(0), 
            shape = "Long", type = "long")), shape = "DataTransfer", 
            type = "structure"), JobLogInfo = structure(list(JobCompletionReportURI = structure(logical(0), 
            shape = "String", type = "string", min = 1L), JobSuccessLogURI = structure(logical(0), 
            shape = "String", type = "string", min = 1L), JobFailureLogURI = structure(logical(0), 
            shape = "String", type = "string", min = 1L)), shape = "JobLogs", 
            type = "structure"), ClusterId = structure(logical(0), 
            shape = "String", type = "string", min = 1L), ForwardingAddressId = structure(logical(0), 
            shape = "AddressId", type = "string", max = 40L, 
            min = 40L, pattern = "ADID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}")), 
        shape = "JobMetadata", type = "structure"), SubJobMetadata = structure(list(structure(list(JobId = structure(logical(0), 
        shape = "String", type = "string", min = 1L), JobState = structure(logical(0), 
        shape = "JobState", type = "string"), JobType = structure(logical(0), 
        shape = "JobType", type = "string"), SnowballType = structure(logical(0), 
        shape = "SnowballType", type = "string"), CreationDate = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), Resources = structure(list(S3Resources = structure(list(structure(list(BucketArn = structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 255L), 
        KeyRange = structure(list(BeginMarker = structure(logical(0), 
            shape = "String", type = "string", min = 1L), EndMarker = structure(logical(0), 
            shape = "String", type = "string", min = 1L)), shape = "KeyRange", 
            type = "structure")), shape = "S3Resource", type = "structure")), 
        shape = "S3ResourceList", type = "list"), LambdaResources = structure(list(structure(list(LambdaArn = structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 255L), 
        EventTriggers = structure(list(structure(list(EventResourceARN = structure(logical(0), 
            shape = "ResourceARN", type = "string", max = 255L)), 
            shape = "EventTriggerDefinition", type = "structure")), 
            shape = "EventTriggerDefinitionList", type = "list")), 
        shape = "LambdaResource", type = "structure")), shape = "LambdaResourceList", 
        type = "list"), Ec2AmiResources = structure(list(structure(list(AmiId = structure(logical(0), 
        shape = "AmiId", type = "string", max = 21L, min = 12L, 
        pattern = "(ami-[0-9a-f]{8})|(ami-[0-9a-f]{17})"), SnowballAmiId = structure(logical(0), 
        shape = "String", type = "string", min = 1L)), shape = "Ec2AmiResource", 
        type = "structure")), shape = "Ec2AmiResourceList", type = "list")), 
        shape = "JobResource", type = "structure"), Description = structure(logical(0), 
        shape = "String", type = "string", min = 1L), KmsKeyARN = structure(logical(0), 
        shape = "KmsKeyARN", type = "string", max = 255L, pattern = "arn:aws.*:kms:.*:[0-9]{12}:key/.*"), 
        RoleARN = structure(logical(0), shape = "RoleARN", type = "string", 
            max = 255L, pattern = "arn:aws.*:iam::[0-9]{12}:role/.*"), 
        AddressId = structure(logical(0), shape = "AddressId", 
            type = "string", max = 40L, min = 40L, pattern = "ADID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}"), 
        ShippingDetails = structure(list(ShippingOption = structure(logical(0), 
            shape = "ShippingOption", type = "string"), InboundShipment = structure(list(Status = structure(logical(0), 
            shape = "String", type = "string", min = 1L), TrackingNumber = structure(logical(0), 
            shape = "String", type = "string", min = 1L)), shape = "Shipment", 
            type = "structure"), OutboundShipment = structure(list(Status = structure(logical(0), 
            shape = "String", type = "string", min = 1L), TrackingNumber = structure(logical(0), 
            shape = "String", type = "string", min = 1L)), shape = "Shipment", 
            type = "structure")), shape = "ShippingDetails", 
            type = "structure"), SnowballCapacityPreference = structure(logical(0), 
            shape = "SnowballCapacity", type = "string"), Notification = structure(list(SnsTopicARN = structure(logical(0), 
            shape = "SnsTopicARN", type = "string", max = 255L, 
            pattern = "arn:aws.*:sns:.*:[0-9]{12}:.*"), JobStatesToNotify = structure(list(structure(logical(0), 
            shape = "JobState", type = "string")), shape = "JobStateList", 
            type = "list"), NotifyAll = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "Notification", 
            type = "structure"), DataTransferProgress = structure(list(BytesTransferred = structure(logical(0), 
            shape = "Long", type = "long"), ObjectsTransferred = structure(logical(0), 
            shape = "Long", type = "long"), TotalBytes = structure(logical(0), 
            shape = "Long", type = "long"), TotalObjects = structure(logical(0), 
            shape = "Long", type = "long")), shape = "DataTransfer", 
            type = "structure"), JobLogInfo = structure(list(JobCompletionReportURI = structure(logical(0), 
            shape = "String", type = "string", min = 1L), JobSuccessLogURI = structure(logical(0), 
            shape = "String", type = "string", min = 1L), JobFailureLogURI = structure(logical(0), 
            shape = "String", type = "string", min = 1L)), shape = "JobLogs", 
            type = "structure"), ClusterId = structure(logical(0), 
            shape = "String", type = "string", min = 1L), ForwardingAddressId = structure(logical(0), 
            shape = "AddressId", type = "string", max = 40L, 
            min = 40L, pattern = "ADID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}")), 
        shape = "JobMetadata", type = "structure")), shape = "JobMetadataList", 
        type = "list")), shape = "DescribeJobResult", type = "structure")
    return(populate(args, shape))
}

get_job_manifest_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string", max = 39L, min = 39L, pattern = "(M|J)ID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}")), 
        shape = "GetJobManifestRequest", type = "structure")
    return(populate(args, shape))
}

get_job_manifest_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ManifestURI = structure(logical(0), 
        shape = "String", type = "string", min = 1L)), shape = "GetJobManifestResult", 
        type = "structure")
    return(populate(args, shape))
}

get_job_unlock_code_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string", max = 39L, min = 39L, pattern = "(M|J)ID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}")), 
        shape = "GetJobUnlockCodeRequest", type = "structure")
    return(populate(args, shape))
}

get_job_unlock_code_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UnlockCode = structure(logical(0), 
        shape = "String", type = "string", min = 1L)), shape = "GetJobUnlockCodeResult", 
        type = "structure")
    return(populate(args, shape))
}

get_snowball_usage_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "GetSnowballUsageRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_snowball_usage_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SnowballLimit = structure(logical(0), 
        shape = "Integer", type = "integer"), SnowballsInUse = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "GetSnowballUsageResult", 
        type = "structure")
    return(populate(args, shape))
}

list_cluster_jobs_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterId = structure(logical(0), 
        shape = "ClusterId", type = "string", max = 39L, min = 39L, 
        pattern = "CID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}"), 
        MaxResults = structure(logical(0), shape = "ListLimit", 
            type = "integer", max = 100L, min = 0L), NextToken = structure(logical(0), 
            shape = "String", type = "string", min = 1L)), shape = "ListClusterJobsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_cluster_jobs_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobListEntries = structure(list(structure(list(JobId = structure(logical(0), 
        shape = "String", type = "string", min = 1L), JobState = structure(logical(0), 
        shape = "JobState", type = "string"), IsMaster = structure(logical(0), 
        shape = "Boolean", type = "boolean"), JobType = structure(logical(0), 
        shape = "JobType", type = "string"), SnowballType = structure(logical(0), 
        shape = "SnowballType", type = "string"), CreationDate = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), Description = structure(logical(0), 
        shape = "String", type = "string", min = 1L)), shape = "JobListEntry", 
        type = "structure")), shape = "JobListEntryList", type = "list"), 
        NextToken = structure(logical(0), shape = "String", type = "string", 
            min = 1L)), shape = "ListClusterJobsResult", type = "structure")
    return(populate(args, shape))
}

list_clusters_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxResults = structure(logical(0), 
        shape = "ListLimit", type = "integer", max = 100L, min = 0L), 
        NextToken = structure(logical(0), shape = "String", type = "string", 
            min = 1L)), shape = "ListClustersRequest", type = "structure")
    return(populate(args, shape))
}

list_clusters_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterListEntries = structure(list(structure(list(ClusterId = structure(logical(0), 
        shape = "String", type = "string", min = 1L), ClusterState = structure(logical(0), 
        shape = "ClusterState", type = "string"), CreationDate = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), Description = structure(logical(0), 
        shape = "String", type = "string", min = 1L)), shape = "ClusterListEntry", 
        type = "structure")), shape = "ClusterListEntryList", 
        type = "list"), NextToken = structure(logical(0), shape = "String", 
        type = "string", min = 1L)), shape = "ListClustersResult", 
        type = "structure")
    return(populate(args, shape))
}

list_compatible_images_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxResults = structure(logical(0), 
        shape = "ListLimit", type = "integer", max = 100L, min = 0L), 
        NextToken = structure(logical(0), shape = "String", type = "string", 
            min = 1L)), shape = "ListCompatibleImagesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_compatible_images_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CompatibleImages = structure(list(structure(list(AmiId = structure(logical(0), 
        shape = "String", type = "string", min = 1L), Name = structure(logical(0), 
        shape = "String", type = "string", min = 1L)), shape = "CompatibleImage", 
        type = "structure")), shape = "CompatibleImageList", 
        type = "list"), NextToken = structure(logical(0), shape = "String", 
        type = "string", min = 1L)), shape = "ListCompatibleImagesResult", 
        type = "structure")
    return(populate(args, shape))
}

list_jobs_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxResults = structure(logical(0), 
        shape = "ListLimit", type = "integer", max = 100L, min = 0L), 
        NextToken = structure(logical(0), shape = "String", type = "string", 
            min = 1L)), shape = "ListJobsRequest", type = "structure")
    return(populate(args, shape))
}

list_jobs_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobListEntries = structure(list(structure(list(JobId = structure(logical(0), 
        shape = "String", type = "string", min = 1L), JobState = structure(logical(0), 
        shape = "JobState", type = "string"), IsMaster = structure(logical(0), 
        shape = "Boolean", type = "boolean"), JobType = structure(logical(0), 
        shape = "JobType", type = "string"), SnowballType = structure(logical(0), 
        shape = "SnowballType", type = "string"), CreationDate = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), Description = structure(logical(0), 
        shape = "String", type = "string", min = 1L)), shape = "JobListEntry", 
        type = "structure")), shape = "JobListEntryList", type = "list"), 
        NextToken = structure(logical(0), shape = "String", type = "string", 
            min = 1L)), shape = "ListJobsResult", type = "structure")
    return(populate(args, shape))
}

update_cluster_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterId = structure(logical(0), 
        shape = "ClusterId", type = "string", max = 39L, min = 39L, 
        pattern = "CID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}"), 
        RoleARN = structure(logical(0), shape = "RoleARN", type = "string", 
            max = 255L, pattern = "arn:aws.*:iam::[0-9]{12}:role/.*"), 
        Description = structure(logical(0), shape = "String", 
            type = "string", min = 1L), Resources = structure(list(S3Resources = structure(list(structure(list(BucketArn = structure(logical(0), 
            shape = "ResourceARN", type = "string", max = 255L), 
            KeyRange = structure(list(BeginMarker = structure(logical(0), 
                shape = "String", type = "string", min = 1L), 
                EndMarker = structure(logical(0), shape = "String", 
                  type = "string", min = 1L)), shape = "KeyRange", 
                type = "structure")), shape = "S3Resource", type = "structure")), 
            shape = "S3ResourceList", type = "list"), LambdaResources = structure(list(structure(list(LambdaArn = structure(logical(0), 
            shape = "ResourceARN", type = "string", max = 255L), 
            EventTriggers = structure(list(structure(list(EventResourceARN = structure(logical(0), 
                shape = "ResourceARN", type = "string", max = 255L)), 
                shape = "EventTriggerDefinition", type = "structure")), 
                shape = "EventTriggerDefinitionList", type = "list")), 
            shape = "LambdaResource", type = "structure")), shape = "LambdaResourceList", 
            type = "list"), Ec2AmiResources = structure(list(structure(list(AmiId = structure(logical(0), 
            shape = "AmiId", type = "string", max = 21L, min = 12L, 
            pattern = "(ami-[0-9a-f]{8})|(ami-[0-9a-f]{17})"), 
            SnowballAmiId = structure(logical(0), shape = "String", 
                type = "string", min = 1L)), shape = "Ec2AmiResource", 
            type = "structure")), shape = "Ec2AmiResourceList", 
            type = "list")), shape = "JobResource", type = "structure"), 
        AddressId = structure(logical(0), shape = "AddressId", 
            type = "string", max = 40L, min = 40L, pattern = "ADID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}"), 
        ShippingOption = structure(logical(0), shape = "ShippingOption", 
            type = "string"), Notification = structure(list(SnsTopicARN = structure(logical(0), 
            shape = "SnsTopicARN", type = "string", max = 255L, 
            pattern = "arn:aws.*:sns:.*:[0-9]{12}:.*"), JobStatesToNotify = structure(list(structure(logical(0), 
            shape = "JobState", type = "string")), shape = "JobStateList", 
            type = "list"), NotifyAll = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "Notification", 
            type = "structure"), ForwardingAddressId = structure(logical(0), 
            shape = "AddressId", type = "string", max = 40L, 
            min = 40L, pattern = "ADID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}")), 
        shape = "UpdateClusterRequest", type = "structure")
    return(populate(args, shape))
}

update_cluster_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateClusterResult", 
        type = "structure")
    return(populate(args, shape))
}

update_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string", max = 39L, min = 39L, pattern = "(M|J)ID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}"), 
        RoleARN = structure(logical(0), shape = "RoleARN", type = "string", 
            max = 255L, pattern = "arn:aws.*:iam::[0-9]{12}:role/.*"), 
        Notification = structure(list(SnsTopicARN = structure(logical(0), 
            shape = "SnsTopicARN", type = "string", max = 255L, 
            pattern = "arn:aws.*:sns:.*:[0-9]{12}:.*"), JobStatesToNotify = structure(list(structure(logical(0), 
            shape = "JobState", type = "string")), shape = "JobStateList", 
            type = "list"), NotifyAll = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "Notification", 
            type = "structure"), Resources = structure(list(S3Resources = structure(list(structure(list(BucketArn = structure(logical(0), 
            shape = "ResourceARN", type = "string", max = 255L), 
            KeyRange = structure(list(BeginMarker = structure(logical(0), 
                shape = "String", type = "string", min = 1L), 
                EndMarker = structure(logical(0), shape = "String", 
                  type = "string", min = 1L)), shape = "KeyRange", 
                type = "structure")), shape = "S3Resource", type = "structure")), 
            shape = "S3ResourceList", type = "list"), LambdaResources = structure(list(structure(list(LambdaArn = structure(logical(0), 
            shape = "ResourceARN", type = "string", max = 255L), 
            EventTriggers = structure(list(structure(list(EventResourceARN = structure(logical(0), 
                shape = "ResourceARN", type = "string", max = 255L)), 
                shape = "EventTriggerDefinition", type = "structure")), 
                shape = "EventTriggerDefinitionList", type = "list")), 
            shape = "LambdaResource", type = "structure")), shape = "LambdaResourceList", 
            type = "list"), Ec2AmiResources = structure(list(structure(list(AmiId = structure(logical(0), 
            shape = "AmiId", type = "string", max = 21L, min = 12L, 
            pattern = "(ami-[0-9a-f]{8})|(ami-[0-9a-f]{17})"), 
            SnowballAmiId = structure(logical(0), shape = "String", 
                type = "string", min = 1L)), shape = "Ec2AmiResource", 
            type = "structure")), shape = "Ec2AmiResourceList", 
            type = "list")), shape = "JobResource", type = "structure"), 
        AddressId = structure(logical(0), shape = "AddressId", 
            type = "string", max = 40L, min = 40L, pattern = "ADID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}"), 
        ShippingOption = structure(logical(0), shape = "ShippingOption", 
            type = "string"), Description = structure(logical(0), 
            shape = "String", type = "string", min = 1L), SnowballCapacityPreference = structure(logical(0), 
            shape = "SnowballCapacity", type = "string"), ForwardingAddressId = structure(logical(0), 
            shape = "AddressId", type = "string", max = 40L, 
            min = 40L, pattern = "ADID[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}")), 
        shape = "UpdateJobRequest", type = "structure")
    return(populate(args, shape))
}

update_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateJobResult", type = "structure")
    return(populate(args, shape))
}
