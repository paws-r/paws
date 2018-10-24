associate_node_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServerName = structure(logical(0), 
        shape = "ServerName", type = "string", max = 40L, min = 1L, 
        pattern = "[a-zA-Z][a-zA-Z0-9\\-]*"), NodeName = structure(logical(0), 
        shape = "NodeName", type = "string", pattern = "^[\\-\\p{Alnum}_:.]+$"), 
        EngineAttributes = structure(list(structure(list(Name = structure(logical(0), 
            shape = "EngineAttributeName", type = "string"), 
            Value = structure(logical(0), shape = "EngineAttributeValue", 
                type = "string", sensitive = TRUE)), shape = "EngineAttribute", 
            type = "structure")), shape = "EngineAttributes", 
            type = "list")), shape = "AssociateNodeRequest", 
        type = "structure")
    return(populate(args, shape))
}

associate_node_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NodeAssociationStatusToken = structure(logical(0), 
        shape = "NodeAssociationStatusToken", type = "string")), 
        shape = "AssociateNodeResponse", type = "structure")
    return(populate(args, shape))
}

create_backup_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServerName = structure(logical(0), 
        shape = "ServerName", type = "string", max = 40L, min = 1L, 
        pattern = "[a-zA-Z][a-zA-Z0-9\\-]*"), Description = structure(logical(0), 
        shape = "String", type = "string")), shape = "CreateBackupRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_backup_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Backup = structure(list(BackupArn = structure(logical(0), 
        shape = "String", type = "string"), BackupId = structure(logical(0), 
        shape = "BackupId", type = "string", max = 79L), BackupType = structure(logical(0), 
        shape = "BackupType", type = "string"), CreatedAt = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), Description = structure(logical(0), 
        shape = "String", type = "string"), Engine = structure(logical(0), 
        shape = "String", type = "string"), EngineModel = structure(logical(0), 
        shape = "String", type = "string"), EngineVersion = structure(logical(0), 
        shape = "String", type = "string"), InstanceProfileArn = structure(logical(0), 
        shape = "String", type = "string"), InstanceType = structure(logical(0), 
        shape = "String", type = "string"), KeyPair = structure(logical(0), 
        shape = "String", type = "string"), PreferredBackupWindow = structure(logical(0), 
        shape = "TimeWindowDefinition", type = "string", pattern = "^((Mon|Tue|Wed|Thu|Fri|Sat|Sun):)?([0-1][0-9]|2[0-3]):[0-5][0-9]$"), 
        PreferredMaintenanceWindow = structure(logical(0), shape = "TimeWindowDefinition", 
            type = "string", pattern = "^((Mon|Tue|Wed|Thu|Fri|Sat|Sun):)?([0-1][0-9]|2[0-3]):[0-5][0-9]$"), 
        S3DataSize = structure(logical(0), shape = "Integer", 
            deprecated = TRUE, type = "integer"), S3DataUrl = structure(logical(0), 
            shape = "String", deprecated = TRUE, type = "string"), 
        S3LogUrl = structure(logical(0), shape = "String", type = "string"), 
        SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list"), ServerName = structure(logical(0), 
            shape = "ServerName", type = "string", max = 40L, 
            min = 1L, pattern = "[a-zA-Z][a-zA-Z0-9\\-]*"), ServiceRoleArn = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "BackupStatus", type = "string"), StatusDescription = structure(logical(0), 
            shape = "String", type = "string"), SubnetIds = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list"), ToolsVersion = structure(logical(0), 
            shape = "String", type = "string"), UserArn = structure(logical(0), 
            shape = "String", type = "string")), shape = "Backup", 
        type = "structure")), shape = "CreateBackupResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_server_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssociatePublicIpAddress = structure(logical(0), 
        shape = "Boolean", type = "boolean"), DisableAutomatedBackup = structure(logical(0), 
        shape = "Boolean", type = "boolean"), Engine = structure(logical(0), 
        shape = "String", type = "string"), EngineModel = structure(logical(0), 
        shape = "String", type = "string"), EngineVersion = structure(logical(0), 
        shape = "String", type = "string"), EngineAttributes = structure(list(structure(list(Name = structure(logical(0), 
        shape = "EngineAttributeName", type = "string"), Value = structure(logical(0), 
        shape = "EngineAttributeValue", type = "string", sensitive = TRUE)), 
        shape = "EngineAttribute", type = "structure")), shape = "EngineAttributes", 
        type = "list"), BackupRetentionCount = structure(logical(0), 
        shape = "BackupRetentionCountDefinition", type = "integer", 
        min = 1L), ServerName = structure(logical(0), shape = "ServerName", 
        type = "string", max = 40L, min = 1L, pattern = "[a-zA-Z][a-zA-Z0-9\\-]*"), 
        InstanceProfileArn = structure(logical(0), shape = "InstanceProfileArn", 
            type = "string", pattern = "arn:aws:iam::[0-9]{12}:instance-profile/.*"), 
        InstanceType = structure(logical(0), shape = "String", 
            type = "string"), KeyPair = structure(logical(0), 
            shape = "KeyPair", type = "string"), PreferredMaintenanceWindow = structure(logical(0), 
            shape = "TimeWindowDefinition", type = "string", 
            pattern = "^((Mon|Tue|Wed|Thu|Fri|Sat|Sun):)?([0-1][0-9]|2[0-3]):[0-5][0-9]$"), 
        PreferredBackupWindow = structure(logical(0), shape = "TimeWindowDefinition", 
            type = "string", pattern = "^((Mon|Tue|Wed|Thu|Fri|Sat|Sun):)?([0-1][0-9]|2[0-3]):[0-5][0-9]$"), 
        SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list"), ServiceRoleArn = structure(logical(0), 
            shape = "ServiceRoleArn", type = "string", pattern = "arn:aws:iam::[0-9]{12}:role/.*"), 
        SubnetIds = structure(list(structure(logical(0), shape = "String", 
            type = "string")), shape = "Strings", type = "list"), 
        BackupId = structure(logical(0), shape = "BackupId", 
            type = "string", max = 79L)), shape = "CreateServerRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_server_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Server = structure(list(AssociatePublicIpAddress = structure(logical(0), 
        shape = "Boolean", type = "boolean"), BackupRetentionCount = structure(logical(0), 
        shape = "Integer", type = "integer"), ServerName = structure(logical(0), 
        shape = "String", type = "string"), CreatedAt = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), CloudFormationStackArn = structure(logical(0), 
        shape = "String", type = "string"), DisableAutomatedBackup = structure(logical(0), 
        shape = "Boolean", type = "boolean"), Endpoint = structure(logical(0), 
        shape = "String", type = "string"), Engine = structure(logical(0), 
        shape = "String", type = "string"), EngineModel = structure(logical(0), 
        shape = "String", type = "string"), EngineAttributes = structure(list(structure(list(Name = structure(logical(0), 
        shape = "EngineAttributeName", type = "string"), Value = structure(logical(0), 
        shape = "EngineAttributeValue", type = "string", sensitive = TRUE)), 
        shape = "EngineAttribute", type = "structure")), shape = "EngineAttributes", 
        type = "list"), EngineVersion = structure(logical(0), 
        shape = "String", type = "string"), InstanceProfileArn = structure(logical(0), 
        shape = "String", type = "string"), InstanceType = structure(logical(0), 
        shape = "String", type = "string"), KeyPair = structure(logical(0), 
        shape = "String", type = "string"), MaintenanceStatus = structure(logical(0), 
        shape = "MaintenanceStatus", type = "string"), PreferredMaintenanceWindow = structure(logical(0), 
        shape = "TimeWindowDefinition", type = "string", pattern = "^((Mon|Tue|Wed|Thu|Fri|Sat|Sun):)?([0-1][0-9]|2[0-3]):[0-5][0-9]$"), 
        PreferredBackupWindow = structure(logical(0), shape = "TimeWindowDefinition", 
            type = "string", pattern = "^((Mon|Tue|Wed|Thu|Fri|Sat|Sun):)?([0-1][0-9]|2[0-3]):[0-5][0-9]$"), 
        SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list"), ServiceRoleArn = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "ServerStatus", type = "string"), StatusReason = structure(logical(0), 
            shape = "String", type = "string"), SubnetIds = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list"), ServerArn = structure(logical(0), 
            shape = "String", type = "string")), shape = "Server", 
        type = "structure")), shape = "CreateServerResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_backup_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BackupId = structure(logical(0), 
        shape = "BackupId", type = "string", max = 79L)), shape = "DeleteBackupRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_backup_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteBackupResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_server_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServerName = structure(logical(0), 
        shape = "ServerName", type = "string", max = 40L, min = 1L, 
        pattern = "[a-zA-Z][a-zA-Z0-9\\-]*")), shape = "DeleteServerRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_server_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteServerResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_account_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DescribeAccountAttributesRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_account_attributes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Attributes = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Maximum = structure(logical(0), 
        shape = "Integer", type = "integer"), Used = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "AccountAttribute", 
        type = "structure")), shape = "AccountAttributes", type = "list")), 
        shape = "DescribeAccountAttributesResponse", type = "structure")
    return(populate(args, shape))
}

describe_backups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BackupId = structure(logical(0), 
        shape = "BackupId", type = "string", max = 79L), ServerName = structure(logical(0), 
        shape = "ServerName", type = "string", max = 40L, min = 1L, 
        pattern = "[a-zA-Z][a-zA-Z0-9\\-]*"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResults", type = "integer", min = 1L)), shape = "DescribeBackupsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_backups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Backups = structure(list(structure(list(BackupArn = structure(logical(0), 
        shape = "String", type = "string"), BackupId = structure(logical(0), 
        shape = "BackupId", type = "string", max = 79L), BackupType = structure(logical(0), 
        shape = "BackupType", type = "string"), CreatedAt = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), Description = structure(logical(0), 
        shape = "String", type = "string"), Engine = structure(logical(0), 
        shape = "String", type = "string"), EngineModel = structure(logical(0), 
        shape = "String", type = "string"), EngineVersion = structure(logical(0), 
        shape = "String", type = "string"), InstanceProfileArn = structure(logical(0), 
        shape = "String", type = "string"), InstanceType = structure(logical(0), 
        shape = "String", type = "string"), KeyPair = structure(logical(0), 
        shape = "String", type = "string"), PreferredBackupWindow = structure(logical(0), 
        shape = "TimeWindowDefinition", type = "string", pattern = "^((Mon|Tue|Wed|Thu|Fri|Sat|Sun):)?([0-1][0-9]|2[0-3]):[0-5][0-9]$"), 
        PreferredMaintenanceWindow = structure(logical(0), shape = "TimeWindowDefinition", 
            type = "string", pattern = "^((Mon|Tue|Wed|Thu|Fri|Sat|Sun):)?([0-1][0-9]|2[0-3]):[0-5][0-9]$"), 
        S3DataSize = structure(logical(0), shape = "Integer", 
            deprecated = TRUE, type = "integer"), S3DataUrl = structure(logical(0), 
            shape = "String", deprecated = TRUE, type = "string"), 
        S3LogUrl = structure(logical(0), shape = "String", type = "string"), 
        SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list"), ServerName = structure(logical(0), 
            shape = "ServerName", type = "string", max = 40L, 
            min = 1L, pattern = "[a-zA-Z][a-zA-Z0-9\\-]*"), ServiceRoleArn = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "BackupStatus", type = "string"), StatusDescription = structure(logical(0), 
            shape = "String", type = "string"), SubnetIds = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list"), ToolsVersion = structure(logical(0), 
            shape = "String", type = "string"), UserArn = structure(logical(0), 
            shape = "String", type = "string")), shape = "Backup", 
        type = "structure")), shape = "Backups", type = "list"), 
        NextToken = structure(logical(0), shape = "String", type = "string")), 
        shape = "DescribeBackupsResponse", type = "structure")
    return(populate(args, shape))
}

describe_events_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServerName = structure(logical(0), 
        shape = "ServerName", type = "string", max = 40L, min = 1L, 
        pattern = "[a-zA-Z][a-zA-Z0-9\\-]*"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResults", type = "integer", min = 1L)), shape = "DescribeEventsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_events_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServerEvents = structure(list(structure(list(CreatedAt = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), ServerName = structure(logical(0), 
        shape = "String", type = "string"), Message = structure(logical(0), 
        shape = "String", type = "string"), LogUrl = structure(logical(0), 
        shape = "String", type = "string")), shape = "ServerEvent", 
        type = "structure")), shape = "ServerEvents", type = "list"), 
        NextToken = structure(logical(0), shape = "String", type = "string")), 
        shape = "DescribeEventsResponse", type = "structure")
    return(populate(args, shape))
}

describe_node_association_status_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NodeAssociationStatusToken = structure(logical(0), 
        shape = "NodeAssociationStatusToken", type = "string"), 
        ServerName = structure(logical(0), shape = "ServerName", 
            type = "string", max = 40L, min = 1L, pattern = "[a-zA-Z][a-zA-Z0-9\\-]*")), 
        shape = "DescribeNodeAssociationStatusRequest", type = "structure")
    return(populate(args, shape))
}

describe_node_association_status_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NodeAssociationStatus = structure(logical(0), 
        shape = "NodeAssociationStatus", type = "string"), EngineAttributes = structure(list(structure(list(Name = structure(logical(0), 
        shape = "EngineAttributeName", type = "string"), Value = structure(logical(0), 
        shape = "EngineAttributeValue", type = "string", sensitive = TRUE)), 
        shape = "EngineAttribute", type = "structure")), shape = "EngineAttributes", 
        type = "list")), shape = "DescribeNodeAssociationStatusResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_servers_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServerName = structure(logical(0), 
        shape = "ServerName", type = "string", max = 40L, min = 1L, 
        pattern = "[a-zA-Z][a-zA-Z0-9\\-]*"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResults", type = "integer", min = 1L)), shape = "DescribeServersRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_servers_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Servers = structure(list(structure(list(AssociatePublicIpAddress = structure(logical(0), 
        shape = "Boolean", type = "boolean"), BackupRetentionCount = structure(logical(0), 
        shape = "Integer", type = "integer"), ServerName = structure(logical(0), 
        shape = "String", type = "string"), CreatedAt = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), CloudFormationStackArn = structure(logical(0), 
        shape = "String", type = "string"), DisableAutomatedBackup = structure(logical(0), 
        shape = "Boolean", type = "boolean"), Endpoint = structure(logical(0), 
        shape = "String", type = "string"), Engine = structure(logical(0), 
        shape = "String", type = "string"), EngineModel = structure(logical(0), 
        shape = "String", type = "string"), EngineAttributes = structure(list(structure(list(Name = structure(logical(0), 
        shape = "EngineAttributeName", type = "string"), Value = structure(logical(0), 
        shape = "EngineAttributeValue", type = "string", sensitive = TRUE)), 
        shape = "EngineAttribute", type = "structure")), shape = "EngineAttributes", 
        type = "list"), EngineVersion = structure(logical(0), 
        shape = "String", type = "string"), InstanceProfileArn = structure(logical(0), 
        shape = "String", type = "string"), InstanceType = structure(logical(0), 
        shape = "String", type = "string"), KeyPair = structure(logical(0), 
        shape = "String", type = "string"), MaintenanceStatus = structure(logical(0), 
        shape = "MaintenanceStatus", type = "string"), PreferredMaintenanceWindow = structure(logical(0), 
        shape = "TimeWindowDefinition", type = "string", pattern = "^((Mon|Tue|Wed|Thu|Fri|Sat|Sun):)?([0-1][0-9]|2[0-3]):[0-5][0-9]$"), 
        PreferredBackupWindow = structure(logical(0), shape = "TimeWindowDefinition", 
            type = "string", pattern = "^((Mon|Tue|Wed|Thu|Fri|Sat|Sun):)?([0-1][0-9]|2[0-3]):[0-5][0-9]$"), 
        SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list"), ServiceRoleArn = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "ServerStatus", type = "string"), StatusReason = structure(logical(0), 
            shape = "String", type = "string"), SubnetIds = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list"), ServerArn = structure(logical(0), 
            shape = "String", type = "string")), shape = "Server", 
        type = "structure")), shape = "Servers", type = "list"), 
        NextToken = structure(logical(0), shape = "String", type = "string")), 
        shape = "DescribeServersResponse", type = "structure")
    return(populate(args, shape))
}

disassociate_node_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServerName = structure(logical(0), 
        shape = "ServerName", type = "string", max = 40L, min = 1L, 
        pattern = "[a-zA-Z][a-zA-Z0-9\\-]*"), NodeName = structure(logical(0), 
        shape = "NodeName", type = "string", pattern = "^[\\-\\p{Alnum}_:.]+$"), 
        EngineAttributes = structure(list(structure(list(Name = structure(logical(0), 
            shape = "EngineAttributeName", type = "string"), 
            Value = structure(logical(0), shape = "EngineAttributeValue", 
                type = "string", sensitive = TRUE)), shape = "EngineAttribute", 
            type = "structure")), shape = "EngineAttributes", 
            type = "list")), shape = "DisassociateNodeRequest", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_node_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NodeAssociationStatusToken = structure(logical(0), 
        shape = "NodeAssociationStatusToken", type = "string")), 
        shape = "DisassociateNodeResponse", type = "structure")
    return(populate(args, shape))
}

export_server_engine_attribute_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ExportAttributeName = structure(logical(0), 
        shape = "String", type = "string"), ServerName = structure(logical(0), 
        shape = "ServerName", type = "string", max = 40L, min = 1L, 
        pattern = "[a-zA-Z][a-zA-Z0-9\\-]*"), InputAttributes = structure(list(structure(list(Name = structure(logical(0), 
        shape = "EngineAttributeName", type = "string"), Value = structure(logical(0), 
        shape = "EngineAttributeValue", type = "string", sensitive = TRUE)), 
        shape = "EngineAttribute", type = "structure")), shape = "EngineAttributes", 
        type = "list")), shape = "ExportServerEngineAttributeRequest", 
        type = "structure")
    return(populate(args, shape))
}

export_server_engine_attribute_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EngineAttribute = structure(list(Name = structure(logical(0), 
        shape = "EngineAttributeName", type = "string"), Value = structure(logical(0), 
        shape = "EngineAttributeValue", type = "string", sensitive = TRUE)), 
        shape = "EngineAttribute", type = "structure"), ServerName = structure(logical(0), 
        shape = "ServerName", type = "string", max = 40L, min = 1L, 
        pattern = "[a-zA-Z][a-zA-Z0-9\\-]*")), shape = "ExportServerEngineAttributeResponse", 
        type = "structure")
    return(populate(args, shape))
}

restore_server_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BackupId = structure(logical(0), 
        shape = "BackupId", type = "string", max = 79L), ServerName = structure(logical(0), 
        shape = "ServerName", type = "string", max = 40L, min = 1L, 
        pattern = "[a-zA-Z][a-zA-Z0-9\\-]*"), InstanceType = structure(logical(0), 
        shape = "String", type = "string"), KeyPair = structure(logical(0), 
        shape = "KeyPair", type = "string")), shape = "RestoreServerRequest", 
        type = "structure")
    return(populate(args, shape))
}

restore_server_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "RestoreServerResponse", 
        type = "structure")
    return(populate(args, shape))
}

start_maintenance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServerName = structure(logical(0), 
        shape = "ServerName", type = "string", max = 40L, min = 1L, 
        pattern = "[a-zA-Z][a-zA-Z0-9\\-]*"), EngineAttributes = structure(list(structure(list(Name = structure(logical(0), 
        shape = "EngineAttributeName", type = "string"), Value = structure(logical(0), 
        shape = "EngineAttributeValue", type = "string", sensitive = TRUE)), 
        shape = "EngineAttribute", type = "structure")), shape = "EngineAttributes", 
        type = "list")), shape = "StartMaintenanceRequest", type = "structure")
    return(populate(args, shape))
}

start_maintenance_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Server = structure(list(AssociatePublicIpAddress = structure(logical(0), 
        shape = "Boolean", type = "boolean"), BackupRetentionCount = structure(logical(0), 
        shape = "Integer", type = "integer"), ServerName = structure(logical(0), 
        shape = "String", type = "string"), CreatedAt = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), CloudFormationStackArn = structure(logical(0), 
        shape = "String", type = "string"), DisableAutomatedBackup = structure(logical(0), 
        shape = "Boolean", type = "boolean"), Endpoint = structure(logical(0), 
        shape = "String", type = "string"), Engine = structure(logical(0), 
        shape = "String", type = "string"), EngineModel = structure(logical(0), 
        shape = "String", type = "string"), EngineAttributes = structure(list(structure(list(Name = structure(logical(0), 
        shape = "EngineAttributeName", type = "string"), Value = structure(logical(0), 
        shape = "EngineAttributeValue", type = "string", sensitive = TRUE)), 
        shape = "EngineAttribute", type = "structure")), shape = "EngineAttributes", 
        type = "list"), EngineVersion = structure(logical(0), 
        shape = "String", type = "string"), InstanceProfileArn = structure(logical(0), 
        shape = "String", type = "string"), InstanceType = structure(logical(0), 
        shape = "String", type = "string"), KeyPair = structure(logical(0), 
        shape = "String", type = "string"), MaintenanceStatus = structure(logical(0), 
        shape = "MaintenanceStatus", type = "string"), PreferredMaintenanceWindow = structure(logical(0), 
        shape = "TimeWindowDefinition", type = "string", pattern = "^((Mon|Tue|Wed|Thu|Fri|Sat|Sun):)?([0-1][0-9]|2[0-3]):[0-5][0-9]$"), 
        PreferredBackupWindow = structure(logical(0), shape = "TimeWindowDefinition", 
            type = "string", pattern = "^((Mon|Tue|Wed|Thu|Fri|Sat|Sun):)?([0-1][0-9]|2[0-3]):[0-5][0-9]$"), 
        SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list"), ServiceRoleArn = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "ServerStatus", type = "string"), StatusReason = structure(logical(0), 
            shape = "String", type = "string"), SubnetIds = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list"), ServerArn = structure(logical(0), 
            shape = "String", type = "string")), shape = "Server", 
        type = "structure")), shape = "StartMaintenanceResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_server_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DisableAutomatedBackup = structure(logical(0), 
        shape = "Boolean", type = "boolean"), BackupRetentionCount = structure(logical(0), 
        shape = "Integer", type = "integer"), ServerName = structure(logical(0), 
        shape = "ServerName", type = "string", max = 40L, min = 1L, 
        pattern = "[a-zA-Z][a-zA-Z0-9\\-]*"), PreferredMaintenanceWindow = structure(logical(0), 
        shape = "TimeWindowDefinition", type = "string", pattern = "^((Mon|Tue|Wed|Thu|Fri|Sat|Sun):)?([0-1][0-9]|2[0-3]):[0-5][0-9]$"), 
        PreferredBackupWindow = structure(logical(0), shape = "TimeWindowDefinition", 
            type = "string", pattern = "^((Mon|Tue|Wed|Thu|Fri|Sat|Sun):)?([0-1][0-9]|2[0-3]):[0-5][0-9]$")), 
        shape = "UpdateServerRequest", type = "structure")
    return(populate(args, shape))
}

update_server_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Server = structure(list(AssociatePublicIpAddress = structure(logical(0), 
        shape = "Boolean", type = "boolean"), BackupRetentionCount = structure(logical(0), 
        shape = "Integer", type = "integer"), ServerName = structure(logical(0), 
        shape = "String", type = "string"), CreatedAt = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), CloudFormationStackArn = structure(logical(0), 
        shape = "String", type = "string"), DisableAutomatedBackup = structure(logical(0), 
        shape = "Boolean", type = "boolean"), Endpoint = structure(logical(0), 
        shape = "String", type = "string"), Engine = structure(logical(0), 
        shape = "String", type = "string"), EngineModel = structure(logical(0), 
        shape = "String", type = "string"), EngineAttributes = structure(list(structure(list(Name = structure(logical(0), 
        shape = "EngineAttributeName", type = "string"), Value = structure(logical(0), 
        shape = "EngineAttributeValue", type = "string", sensitive = TRUE)), 
        shape = "EngineAttribute", type = "structure")), shape = "EngineAttributes", 
        type = "list"), EngineVersion = structure(logical(0), 
        shape = "String", type = "string"), InstanceProfileArn = structure(logical(0), 
        shape = "String", type = "string"), InstanceType = structure(logical(0), 
        shape = "String", type = "string"), KeyPair = structure(logical(0), 
        shape = "String", type = "string"), MaintenanceStatus = structure(logical(0), 
        shape = "MaintenanceStatus", type = "string"), PreferredMaintenanceWindow = structure(logical(0), 
        shape = "TimeWindowDefinition", type = "string", pattern = "^((Mon|Tue|Wed|Thu|Fri|Sat|Sun):)?([0-1][0-9]|2[0-3]):[0-5][0-9]$"), 
        PreferredBackupWindow = structure(logical(0), shape = "TimeWindowDefinition", 
            type = "string", pattern = "^((Mon|Tue|Wed|Thu|Fri|Sat|Sun):)?([0-1][0-9]|2[0-3]):[0-5][0-9]$"), 
        SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list"), ServiceRoleArn = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "ServerStatus", type = "string"), StatusReason = structure(logical(0), 
            shape = "String", type = "string"), SubnetIds = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list"), ServerArn = structure(logical(0), 
            shape = "String", type = "string")), shape = "Server", 
        type = "structure")), shape = "UpdateServerResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_server_engine_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServerName = structure(logical(0), 
        shape = "ServerName", type = "string", max = 40L, min = 1L, 
        pattern = "[a-zA-Z][a-zA-Z0-9\\-]*"), AttributeName = structure(logical(0), 
        shape = "AttributeName", type = "string", max = 64L, 
        min = 1L, pattern = "[A-Z][A-Z0-9_]*"), AttributeValue = structure(logical(0), 
        shape = "AttributeValue", type = "string")), shape = "UpdateServerEngineAttributesRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_server_engine_attributes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Server = structure(list(AssociatePublicIpAddress = structure(logical(0), 
        shape = "Boolean", type = "boolean"), BackupRetentionCount = structure(logical(0), 
        shape = "Integer", type = "integer"), ServerName = structure(logical(0), 
        shape = "String", type = "string"), CreatedAt = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), CloudFormationStackArn = structure(logical(0), 
        shape = "String", type = "string"), DisableAutomatedBackup = structure(logical(0), 
        shape = "Boolean", type = "boolean"), Endpoint = structure(logical(0), 
        shape = "String", type = "string"), Engine = structure(logical(0), 
        shape = "String", type = "string"), EngineModel = structure(logical(0), 
        shape = "String", type = "string"), EngineAttributes = structure(list(structure(list(Name = structure(logical(0), 
        shape = "EngineAttributeName", type = "string"), Value = structure(logical(0), 
        shape = "EngineAttributeValue", type = "string", sensitive = TRUE)), 
        shape = "EngineAttribute", type = "structure")), shape = "EngineAttributes", 
        type = "list"), EngineVersion = structure(logical(0), 
        shape = "String", type = "string"), InstanceProfileArn = structure(logical(0), 
        shape = "String", type = "string"), InstanceType = structure(logical(0), 
        shape = "String", type = "string"), KeyPair = structure(logical(0), 
        shape = "String", type = "string"), MaintenanceStatus = structure(logical(0), 
        shape = "MaintenanceStatus", type = "string"), PreferredMaintenanceWindow = structure(logical(0), 
        shape = "TimeWindowDefinition", type = "string", pattern = "^((Mon|Tue|Wed|Thu|Fri|Sat|Sun):)?([0-1][0-9]|2[0-3]):[0-5][0-9]$"), 
        PreferredBackupWindow = structure(logical(0), shape = "TimeWindowDefinition", 
            type = "string", pattern = "^((Mon|Tue|Wed|Thu|Fri|Sat|Sun):)?([0-1][0-9]|2[0-3]):[0-5][0-9]$"), 
        SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list"), ServiceRoleArn = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "ServerStatus", type = "string"), StatusReason = structure(logical(0), 
            shape = "String", type = "string"), SubnetIds = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list"), ServerArn = structure(logical(0), 
            shape = "String", type = "string")), shape = "Server", 
        type = "structure")), shape = "UpdateServerEngineAttributesResponse", 
        type = "structure")
    return(populate(args, shape))
}
