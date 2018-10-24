#' Allocates a static IP address
#'
#' Allocates a static IP address.
#'
#' @param staticIpName The name of the static IP address.
#'
#' @examples
#'
#' @export
allocate_static_ip <- function (staticIpName) 
{
    op <- Operation(name = "AllocateStaticIp", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- allocate_static_ip_input(staticIpName = staticIpName)
    output <- allocate_static_ip_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Attaches a block storage disk to a running or stopped Lightsail instance and exposes it to the instance with the specified disk name
#'
#' Attaches a block storage disk to a running or stopped Lightsail instance and exposes it to the instance with the specified disk name.
#'
#' @param diskName The unique Lightsail disk name (e.g., `my-disk`).
#' @param instanceName The name of the Lightsail instance where you want to utilize the storage disk.
#' @param diskPath The disk path to expose to the instance (e.g., `/dev/xvdf`).
#'
#' @examples
#'
#' @export
attach_disk <- function (diskName, instanceName, diskPath) 
{
    op <- Operation(name = "AttachDisk", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- attach_disk_input(diskName = diskName, instanceName = instanceName, 
        diskPath = diskPath)
    output <- attach_disk_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Attaches one or more Lightsail instances to a load balancer
#'
#' Attaches one or more Lightsail instances to a load balancer.
#' 
#' After some time, the instances are attached to the load balancer and the health check status is available.
#'
#' @param loadBalancerName The name of the load balancer.
#' @param instanceNames An array of strings representing the instance name(s) you want to attach to your load balancer.
#' 
#' An instance must be `running` before you can attach it to your load balancer.
#' 
#' There are no additional limits on the number of instances you can attach to your load balancer, aside from the limit of Lightsail instances you can create in your account (20).
#'
#' @examples
#'
#' @export
attach_instances_to_load_balancer <- function (loadBalancerName, 
    instanceNames) 
{
    op <- Operation(name = "AttachInstancesToLoadBalancer", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- attach_instances_to_load_balancer_input(loadBalancerName = loadBalancerName, 
        instanceNames = instanceNames)
    output <- attach_instances_to_load_balancer_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Attaches a Transport Layer Security (TLS) certificate to your load balancer
#'
#' Attaches a Transport Layer Security (TLS) certificate to your load balancer. TLS is just an updated, more secure version of Secure Socket Layer (SSL).
#' 
#' Once you create and validate your certificate, you can attach it to your load balancer. You can also use this API to rotate the certificates on your account. Use the `AttachLoadBalancerTlsCertificate` operation with the non-attached certificate, and it will replace the existing one and become the attached certificate.
#'
#' @param loadBalancerName The name of the load balancer to which you want to associate the SSL/TLS certificate.
#' @param certificateName The name of your SSL/TLS certificate.
#'
#' @examples
#'
#' @export
attach_load_balancer_tls_certificate <- function (loadBalancerName, 
    certificateName) 
{
    op <- Operation(name = "AttachLoadBalancerTlsCertificate", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- attach_load_balancer_tls_certificate_input(loadBalancerName = loadBalancerName, 
        certificateName = certificateName)
    output <- attach_load_balancer_tls_certificate_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Attaches a static IP address to a specific Amazon Lightsail instance
#'
#' Attaches a static IP address to a specific Amazon Lightsail instance.
#'
#' @param staticIpName The name of the static IP.
#' @param instanceName The instance name to which you want to attach the static IP address.
#'
#' @examples
#'
#' @export
attach_static_ip <- function (staticIpName, instanceName) 
{
    op <- Operation(name = "AttachStaticIp", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- attach_static_ip_input(staticIpName = staticIpName, 
        instanceName = instanceName)
    output <- attach_static_ip_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Closes the public ports on a specific Amazon Lightsail instance
#'
#' Closes the public ports on a specific Amazon Lightsail instance.
#'
#' @param portInfo Information about the public port you are trying to close.
#' @param instanceName The name of the instance on which you\'re attempting to close the public ports.
#'
#' @examples
#'
#' @export
close_instance_public_ports <- function (portInfo, instanceName) 
{
    op <- Operation(name = "CloseInstancePublicPorts", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- close_instance_public_ports_input(portInfo = portInfo, 
        instanceName = instanceName)
    output <- close_instance_public_ports_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a block storage disk that can be attached to a Lightsail instance in the same Availability Zone (e
#'
#' Creates a block storage disk that can be attached to a Lightsail instance in the same Availability Zone (e.g., `us-east-2a`). The disk is created in the regional endpoint that you send the HTTP request to. For more information, see [Regions and Availability Zones in Lightsail](https://lightsail.aws.amazon.com/ls/docs/overview/article/understanding-regions-and-availability-zones-in-amazon-lightsail).
#'
#' @param diskName The unique Lightsail disk name (e.g., `my-disk`).
#' @param availabilityZone The Availability Zone where you want to create the disk (e.g., `us-east-2a`). Choose the same Availability Zone as the Lightsail instance where you want to create the disk.
#' 
#' Use the GetRegions operation to list the Availability Zones where Lightsail is currently available.
#' @param sizeInGb The size of the disk in GB (e.g., `32`).
#'
#' @examples
#'
#' @export
create_disk <- function (diskName, availabilityZone, sizeInGb) 
{
    op <- Operation(name = "CreateDisk", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_disk_input(diskName = diskName, availabilityZone = availabilityZone, 
        sizeInGb = sizeInGb)
    output <- create_disk_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a block storage disk from a disk snapshot that can be attached to a Lightsail instance in the same Availability Zone (e
#'
#' Creates a block storage disk from a disk snapshot that can be attached to a Lightsail instance in the same Availability Zone (e.g., `us-east-2a`). The disk is created in the regional endpoint that you send the HTTP request to. For more information, see [Regions and Availability Zones in Lightsail](https://lightsail.aws.amazon.com/ls/docs/overview/article/understanding-regions-and-availability-zones-in-amazon-lightsail).
#'
#' @param diskName The unique Lightsail disk name (e.g., `my-disk`).
#' @param diskSnapshotName The name of the disk snapshot (e.g., `my-snapshot`) from which to create the new storage disk.
#' @param availabilityZone The Availability Zone where you want to create the disk (e.g., `us-east-2a`). Choose the same Availability Zone as the Lightsail instance where you want to create the disk.
#' 
#' Use the GetRegions operation to list the Availability Zones where Lightsail is currently available.
#' @param sizeInGb The size of the disk in GB (e.g., `32`).
#'
#' @examples
#'
#' @export
create_disk_from_snapshot <- function (diskName, diskSnapshotName, 
    availabilityZone, sizeInGb) 
{
    op <- Operation(name = "CreateDiskFromSnapshot", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_disk_from_snapshot_input(diskName = diskName, 
        diskSnapshotName = diskSnapshotName, availabilityZone = availabilityZone, 
        sizeInGb = sizeInGb)
    output <- create_disk_from_snapshot_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a snapshot of a block storage disk
#'
#' Creates a snapshot of a block storage disk. You can use snapshots for backups, to make copies of disks, and to save data before shutting down a Lightsail instance.
#' 
#' You can take a snapshot of an attached disk that is in use; however, snapshots only capture data that has been written to your disk at the time the snapshot command is issued. This may exclude any data that has been cached by any applications or the operating system. If you can pause any file systems on the disk long enough to take a snapshot, your snapshot should be complete. Nevertheless, if you cannot pause all file writes to the disk, you should unmount the disk from within the Lightsail instance, issue the create disk snapshot command, and then remount the disk to ensure a consistent and complete snapshot. You may remount and use your disk while the snapshot status is pending.
#'
#' @param diskName The unique name of the source disk (e.g., `my-source-disk`).
#' @param diskSnapshotName The name of the destination disk snapshot (e.g., `my-disk-snapshot`) based on the source disk.
#'
#' @examples
#'
#' @export
create_disk_snapshot <- function (diskName, diskSnapshotName) 
{
    op <- Operation(name = "CreateDiskSnapshot", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_disk_snapshot_input(diskName = diskName, 
        diskSnapshotName = diskSnapshotName)
    output <- create_disk_snapshot_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a domain resource for the specified domain (e
#'
#' Creates a domain resource for the specified domain (e.g., example.com).
#'
#' @param domainName The domain name to manage (e.g., `example.com`).
#' 
#' You cannot register a new domain name using Lightsail. You must register a domain name using Amazon Route 53 or another domain name registrar. If you have already registered your domain, you can enter its name in this parameter to manage the DNS records for that domain.
#'
#' @examples
#'
#' @export
create_domain <- function (domainName) 
{
    op <- Operation(name = "CreateDomain", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_domain_input(domainName = domainName)
    output <- create_domain_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates one of the following entry records associated with the domain: A record, CNAME record, TXT record, or MX record
#'
#' Creates one of the following entry records associated with the domain: A record, CNAME record, TXT record, or MX record.
#'
#' @param domainName The domain name (e.g., `example.com`) for which you want to create the domain entry.
#' @param domainEntry An array of key-value pairs containing information about the domain entry request.
#'
#' @examples
#'
#' @export
create_domain_entry <- function (domainName, domainEntry) 
{
    op <- Operation(name = "CreateDomainEntry", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_domain_entry_input(domainName = domainName, 
        domainEntry = domainEntry)
    output <- create_domain_entry_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a snapshot of a specific virtual private server, or *instance*
#'
#' Creates a snapshot of a specific virtual private server, or *instance*. You can use a snapshot to create a new instance that is based on that snapshot.
#'
#' @param instanceSnapshotName The name for your new snapshot.
#' @param instanceName The Lightsail instance on which to base your snapshot.
#'
#' @examples
#'
#' @export
create_instance_snapshot <- function (instanceSnapshotName, instanceName) 
{
    op <- Operation(name = "CreateInstanceSnapshot", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_instance_snapshot_input(instanceSnapshotName = instanceSnapshotName, 
        instanceName = instanceName)
    output <- create_instance_snapshot_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates one or more Amazon Lightsail virtual private servers, or *instances*
#'
#' Creates one or more Amazon Lightsail virtual private servers, or *instances*.
#'
#' @param instanceNames The names to use for your new Lightsail instances. Separate multiple values using quotation marks and commas, for example: `["MyFirstInstance","MySecondInstance"]`
#' @param availabilityZone The Availability Zone in which to create your instance. Use the following format: `us-east-2a` (case sensitive). You can get a list of availability zones by using the [get regions](http://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetRegions.html) operation. Be sure to add the `include availability zones` parameter to your request.
#' @param blueprintId The ID for a virtual private server image (e.g., `app_wordpress_4_4` or `app_lamp_7_0`). Use the get blueprints operation to return a list of available images (or *blueprints*).
#' @param bundleId The bundle of specification information for your virtual private server (or *instance*), including the pricing plan (e.g., `micro_1_0`).
#' @param customImageName (Deprecated) The name for your custom image.
#' 
#' In releases prior to June 12, 2017, this parameter was ignored by the API. It is now deprecated.
#' @param userData A launch script you can create that configures a server with additional user data. For example, you might want to run `apt-get -y update`.
#' 
#' Depending on the machine image you choose, the command to get software on your instance varies. Amazon Linux and CentOS use `yum`, Debian and Ubuntu use `apt-get`, and FreeBSD uses `pkg`. For a complete list, see the [Dev Guide](https://lightsail.aws.amazon.com/ls/docs/getting-started/article/compare-options-choose-lightsail-instance-image).
#' @param keyPairName The name of your key pair.
#'
#' @examples
#'
#' @export
create_instances <- function (instanceNames, availabilityZone, 
    blueprintId, bundleId, customImageName = NULL, userData = NULL, 
    keyPairName = NULL) 
{
    op <- Operation(name = "CreateInstances", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_instances_input(instanceNames = instanceNames, 
        availabilityZone = availabilityZone, blueprintId = blueprintId, 
        bundleId = bundleId, customImageName = customImageName, 
        userData = userData, keyPairName = keyPairName)
    output <- create_instances_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Uses a specific snapshot as a blueprint for creating one or more new instances that are based on that identical configuration
#'
#' Uses a specific snapshot as a blueprint for creating one or more new instances that are based on that identical configuration.
#'
#' @param instanceNames The names for your new instances.
#' @param availabilityZone The Availability Zone where you want to create your instances. Use the following formatting: `us-east-2a` (case sensitive). You can get a list of availability zones by using the [get regions](http://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetRegions.html) operation. Be sure to add the `include availability zones` parameter to your request.
#' @param instanceSnapshotName The name of the instance snapshot on which you are basing your new instances. Use the get instance snapshots operation to return information about your existing snapshots.
#' @param bundleId The bundle of specification information for your virtual private server (or *instance*), including the pricing plan (e.g., `micro_1_0`).
#' @param attachedDiskMapping An object containing information about one or more disk mappings.
#' @param userData You can create a launch script that configures a server with additional user data. For example, `apt-get -y update`.
#' 
#' Depending on the machine image you choose, the command to get software on your instance varies. Amazon Linux and CentOS use `yum`, Debian and Ubuntu use `apt-get`, and FreeBSD uses `pkg`. For a complete list, see the [Dev Guide](http://lightsail.aws.amazon.com/ls/docs/getting-started/articles/pre-installed-apps).
#' @param keyPairName The name for your key pair.
#'
#' @examples
#'
#' @export
create_instances_from_snapshot <- function (instanceNames, availabilityZone, 
    instanceSnapshotName, bundleId, attachedDiskMapping = NULL, 
    userData = NULL, keyPairName = NULL) 
{
    op <- Operation(name = "CreateInstancesFromSnapshot", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_instances_from_snapshot_input(instanceNames = instanceNames, 
        availabilityZone = availabilityZone, instanceSnapshotName = instanceSnapshotName, 
        bundleId = bundleId, attachedDiskMapping = attachedDiskMapping, 
        userData = userData, keyPairName = keyPairName)
    output <- create_instances_from_snapshot_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates sn SSH key pair
#'
#' Creates sn SSH key pair.
#'
#' @param keyPairName The name for your new key pair.
#'
#' @examples
#'
#' @export
create_key_pair <- function (keyPairName) 
{
    op <- Operation(name = "CreateKeyPair", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_key_pair_input(keyPairName = keyPairName)
    output <- create_key_pair_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a Lightsail load balancer
#'
#' Creates a Lightsail load balancer. To learn more about deciding whether to load balance your application, see [Configure your Lightsail instances for load balancing](https://lightsail.aws.amazon.com/ls/docs/how-to/article/configure-lightsail-instances-for-load-balancing). You can create up to 5 load balancers per AWS Region in your account.
#' 
#' When you create a load balancer, you can specify a unique name and port settings. To change additional load balancer settings, use the `UpdateLoadBalancerAttribute` operation.
#'
#' @param loadBalancerName The name of your load balancer.
#' @param instancePort The instance port where you\'re creating your load balancer.
#' @param healthCheckPath The path you provided to perform the load balancer health check. If you didn\'t specify a health check path, Lightsail uses the root path of your website (e.g., `"/"`).
#' 
#' You may want to specify a custom health check path other than the root of your application if your home page loads slowly or has a lot of media or scripting on it.
#' @param certificateName The name of the SSL/TLS certificate.
#' 
#' If you specify `certificateName`, then `certificateDomainName` is required (and vice-versa).
#' @param certificateDomainName The domain name with which your certificate is associated (e.g., `example.com`).
#' 
#' If you specify `certificateDomainName`, then `certificateName` is required (and vice-versa).
#' @param certificateAlternativeNames The optional alternative domains and subdomains to use with your SSL/TLS certificate (e.g., `www.example.com`, `example.com`, `m.example.com`, `blog.example.com`).
#'
#' @examples
#'
#' @export
create_load_balancer <- function (loadBalancerName, instancePort, 
    healthCheckPath = NULL, certificateName = NULL, certificateDomainName = NULL, 
    certificateAlternativeNames = NULL) 
{
    op <- Operation(name = "CreateLoadBalancer", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_load_balancer_input(loadBalancerName = loadBalancerName, 
        instancePort = instancePort, healthCheckPath = healthCheckPath, 
        certificateName = certificateName, certificateDomainName = certificateDomainName, 
        certificateAlternativeNames = certificateAlternativeNames)
    output <- create_load_balancer_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a Lightsail load balancer TLS certificate
#'
#' Creates a Lightsail load balancer TLS certificate.
#' 
#' TLS is just an updated, more secure version of Secure Socket Layer (SSL).
#'
#' @param loadBalancerName The load balancer name where you want to create the SSL/TLS certificate.
#' @param certificateName The SSL/TLS certificate name.
#' 
#' You can have up to 10 certificates in your account at one time. Each Lightsail load balancer can have up to 2 certificates associated with it at one time. There is also an overall limit to the number of certificates that can be issue in a 365-day period. For more information, see [Limits](http://docs.aws.amazon.com/acm/latest/userguide/acm-limits.html).
#' @param certificateDomainName The domain name (e.g., `example.com`) for your SSL/TLS certificate.
#' @param certificateAlternativeNames An array of strings listing alternative domains and subdomains for your SSL/TLS certificate. Lightsail will de-dupe the names for you. You can have a maximum of 9 alternative names (in addition to the 1 primary domain). We do not support wildcards (e.g., `*.example.com`).
#'
#' @examples
#'
#' @export
create_load_balancer_tls_certificate <- function (loadBalancerName, 
    certificateName, certificateDomainName, certificateAlternativeNames = NULL) 
{
    op <- Operation(name = "CreateLoadBalancerTlsCertificate", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- create_load_balancer_tls_certificate_input(loadBalancerName = loadBalancerName, 
        certificateName = certificateName, certificateDomainName = certificateDomainName, 
        certificateAlternativeNames = certificateAlternativeNames)
    output <- create_load_balancer_tls_certificate_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified block storage disk
#'
#' Deletes the specified block storage disk. The disk must be in the `available` state (not attached to a Lightsail instance).
#' 
#' The disk may remain in the `deleting` state for several minutes.
#'
#' @param diskName The unique name of the disk you want to delete (e.g., `my-disk`).
#'
#' @examples
#'
#' @export
delete_disk <- function (diskName) 
{
    op <- Operation(name = "DeleteDisk", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_disk_input(diskName = diskName)
    output <- delete_disk_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified disk snapshot
#'
#' Deletes the specified disk snapshot.
#' 
#' When you make periodic snapshots of a disk, the snapshots are incremental, and only the blocks on the device that have changed since your last snapshot are saved in the new snapshot. When you delete a snapshot, only the data not needed for any other snapshot is removed. So regardless of which prior snapshots have been deleted, all active snapshots will have access to all the information needed to restore the disk.
#'
#' @param diskSnapshotName The name of the disk snapshot you want to delete (e.g., `my-disk-snapshot`).
#'
#' @examples
#'
#' @export
delete_disk_snapshot <- function (diskSnapshotName) 
{
    op <- Operation(name = "DeleteDiskSnapshot", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_disk_snapshot_input(diskSnapshotName = diskSnapshotName)
    output <- delete_disk_snapshot_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified domain recordset and all of its domain records
#'
#' Deletes the specified domain recordset and all of its domain records.
#'
#' @param domainName The specific domain name to delete.
#'
#' @examples
#'
#' @export
delete_domain <- function (domainName) 
{
    op <- Operation(name = "DeleteDomain", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_domain_input(domainName = domainName)
    output <- delete_domain_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a specific domain entry
#'
#' Deletes a specific domain entry.
#'
#' @param domainName The name of the domain entry to delete.
#' @param domainEntry An array of key-value pairs containing information about your domain entries.
#'
#' @examples
#'
#' @export
delete_domain_entry <- function (domainName, domainEntry) 
{
    op <- Operation(name = "DeleteDomainEntry", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_domain_entry_input(domainName = domainName, 
        domainEntry = domainEntry)
    output <- delete_domain_entry_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a specific Amazon Lightsail virtual private server, or *instance*
#'
#' Deletes a specific Amazon Lightsail virtual private server, or *instance*.
#'
#' @param instanceName The name of the instance to delete.
#'
#' @examples
#'
#' @export
delete_instance <- function (instanceName) 
{
    op <- Operation(name = "DeleteInstance", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_instance_input(instanceName = instanceName)
    output <- delete_instance_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a specific snapshot of a virtual private server (or *instance*)
#'
#' Deletes a specific snapshot of a virtual private server (or *instance*).
#'
#' @param instanceSnapshotName The name of the snapshot to delete.
#'
#' @examples
#'
#' @export
delete_instance_snapshot <- function (instanceSnapshotName) 
{
    op <- Operation(name = "DeleteInstanceSnapshot", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_instance_snapshot_input(instanceSnapshotName = instanceSnapshotName)
    output <- delete_instance_snapshot_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a specific SSH key pair
#'
#' Deletes a specific SSH key pair.
#'
#' @param keyPairName The name of the key pair to delete.
#'
#' @examples
#'
#' @export
delete_key_pair <- function (keyPairName) 
{
    op <- Operation(name = "DeleteKeyPair", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_key_pair_input(keyPairName = keyPairName)
    output <- delete_key_pair_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a Lightsail load balancer and all its associated SSL/TLS certificates
#'
#' Deletes a Lightsail load balancer and all its associated SSL/TLS certificates. Once the load balancer is deleted, you will need to create a new load balancer, create a new certificate, and verify domain ownership again.
#'
#' @param loadBalancerName The name of the load balancer you want to delete.
#'
#' @examples
#'
#' @export
delete_load_balancer <- function (loadBalancerName) 
{
    op <- Operation(name = "DeleteLoadBalancer", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_load_balancer_input(loadBalancerName = loadBalancerName)
    output <- delete_load_balancer_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes an SSL/TLS certificate associated with a Lightsail load balancer
#'
#' Deletes an SSL/TLS certificate associated with a Lightsail load balancer.
#'
#' @param loadBalancerName The load balancer name.
#' @param certificateName The SSL/TLS certificate name.
#' @param force When `true`, forces the deletion of an SSL/TLS certificate.
#' 
#' There can be two certificates associated with a Lightsail load balancer: the primary and the backup. The force parameter is required when the primary SSL/TLS certificate is in use by an instance attached to the load balancer.
#'
#' @examples
#'
#' @export
delete_load_balancer_tls_certificate <- function (loadBalancerName, 
    certificateName, force = NULL) 
{
    op <- Operation(name = "DeleteLoadBalancerTlsCertificate", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- delete_load_balancer_tls_certificate_input(loadBalancerName = loadBalancerName, 
        certificateName = certificateName, force = force)
    output <- delete_load_balancer_tls_certificate_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Detaches a stopped block storage disk from a Lightsail instance
#'
#' Detaches a stopped block storage disk from a Lightsail instance. Make sure to unmount any file systems on the device within your operating system before stopping the instance and detaching the disk.
#'
#' @param diskName The unique name of the disk you want to detach from your instance (e.g., `my-disk`).
#'
#' @examples
#'
#' @export
detach_disk <- function (diskName) 
{
    op <- Operation(name = "DetachDisk", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- detach_disk_input(diskName = diskName)
    output <- detach_disk_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Detaches the specified instances from a Lightsail load balancer
#'
#' Detaches the specified instances from a Lightsail load balancer.
#' 
#' This operation waits until the instances are no longer needed before they are detached from the load balancer.
#'
#' @param loadBalancerName The name of the Lightsail load balancer.
#' @param instanceNames An array of strings containing the names of the instances you want to detach from the load balancer.
#'
#' @examples
#'
#' @export
detach_instances_from_load_balancer <- function (loadBalancerName, 
    instanceNames) 
{
    op <- Operation(name = "DetachInstancesFromLoadBalancer", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- detach_instances_from_load_balancer_input(loadBalancerName = loadBalancerName, 
        instanceNames = instanceNames)
    output <- detach_instances_from_load_balancer_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Detaches a static IP from the Amazon Lightsail instance to which it is attached
#'
#' Detaches a static IP from the Amazon Lightsail instance to which it is attached.
#'
#' @param staticIpName The name of the static IP to detach from the instance.
#'
#' @examples
#'
#' @export
detach_static_ip <- function (staticIpName) 
{
    op <- Operation(name = "DetachStaticIp", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- detach_static_ip_input(staticIpName = staticIpName)
    output <- detach_static_ip_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Downloads the default SSH key pair from the user\'s account
#'
#' Downloads the default SSH key pair from the user\'s account.
#'
#' @examples
#'
#' @export
download_default_key_pair <- function () 
{
    op <- Operation(name = "DownloadDefaultKeyPair", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- download_default_key_pair_input()
    output <- download_default_key_pair_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the names of all active (not deleted) resources
#'
#' Returns the names of all active (not deleted) resources.
#'
#' @param pageToken A token used for paginating results from your get active names request.
#'
#' @examples
#'
#' @export
get_active_names <- function (pageToken = NULL) 
{
    op <- Operation(name = "GetActiveNames", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_active_names_input(pageToken = pageToken)
    output <- get_active_names_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the list of available instance images, or *blueprints*
#'
#' Returns the list of available instance images, or *blueprints*. You can use a blueprint to create a new virtual private server already running a specific operating system, as well as a preinstalled app or development stack. The software each instance is running depends on the blueprint image you choose.
#'
#' @param includeInactive A Boolean value indicating whether to include inactive results in your request.
#' @param pageToken A token used for advancing to the next page of results from your get blueprints request.
#'
#' @examples
#'
#' @export
get_blueprints <- function (includeInactive = NULL, pageToken = NULL) 
{
    op <- Operation(name = "GetBlueprints", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_blueprints_input(includeInactive = includeInactive, 
        pageToken = pageToken)
    output <- get_blueprints_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the list of bundles that are available for purchase
#'
#' Returns the list of bundles that are available for purchase. A bundle describes the specs for your virtual private server (or *instance*).
#'
#' @param includeInactive A Boolean value that indicates whether to include inactive bundle results in your request.
#' @param pageToken A token used for advancing to the next page of results from your get bundles request.
#'
#' @examples
#'
#' @export
get_bundles <- function (includeInactive = NULL, pageToken = NULL) 
{
    op <- Operation(name = "GetBundles", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_bundles_input(includeInactive = includeInactive, 
        pageToken = pageToken)
    output <- get_bundles_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about a specific block storage disk
#'
#' Returns information about a specific block storage disk.
#'
#' @param diskName The name of the disk (e.g., `my-disk`).
#'
#' @examples
#'
#' @export
get_disk <- function (diskName) 
{
    op <- Operation(name = "GetDisk", http_method = "POST", http_path = "/", 
        paginator = list())
    input <- get_disk_input(diskName = diskName)
    output <- get_disk_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about a specific block storage disk snapshot
#'
#' Returns information about a specific block storage disk snapshot.
#'
#' @param diskSnapshotName The name of the disk snapshot (e.g., `my-disk-snapshot`).
#'
#' @examples
#'
#' @export
get_disk_snapshot <- function (diskSnapshotName) 
{
    op <- Operation(name = "GetDiskSnapshot", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_disk_snapshot_input(diskSnapshotName = diskSnapshotName)
    output <- get_disk_snapshot_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about all block storage disk snapshots in your AWS account and region
#'
#' Returns information about all block storage disk snapshots in your AWS account and region.
#' 
#' If you are describing a long list of disk snapshots, you can paginate the output to make the list more manageable. You can use the pageToken and nextPageToken values to retrieve the next items in the list.
#'
#' @param pageToken A token used for advancing to the next page of results from your GetDiskSnapshots request.
#'
#' @examples
#'
#' @export
get_disk_snapshots <- function (pageToken = NULL) 
{
    op <- Operation(name = "GetDiskSnapshots", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_disk_snapshots_input(pageToken = pageToken)
    output <- get_disk_snapshots_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about all block storage disks in your AWS account and region
#'
#' Returns information about all block storage disks in your AWS account and region.
#' 
#' If you are describing a long list of disks, you can paginate the output to make the list more manageable. You can use the pageToken and nextPageToken values to retrieve the next items in the list.
#'
#' @param pageToken A token used for advancing to the next page of results from your GetDisks request.
#'
#' @examples
#'
#' @export
get_disks <- function (pageToken = NULL) 
{
    op <- Operation(name = "GetDisks", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_disks_input(pageToken = pageToken)
    output <- get_disks_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about a specific domain recordset
#'
#' Returns information about a specific domain recordset.
#'
#' @param domainName The domain name for which your want to return information about.
#'
#' @examples
#'
#' @export
get_domain <- function (domainName) 
{
    op <- Operation(name = "GetDomain", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_domain_input(domainName = domainName)
    output <- get_domain_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a list of all domains in the user\'s account
#'
#' Returns a list of all domains in the user\'s account.
#'
#' @param pageToken A token used for advancing to the next page of results from your get domains request.
#'
#' @examples
#'
#' @export
get_domains <- function (pageToken = NULL) 
{
    op <- Operation(name = "GetDomains", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_domains_input(pageToken = pageToken)
    output <- get_domains_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about a specific Amazon Lightsail instance, which is a virtual private server
#'
#' Returns information about a specific Amazon Lightsail instance, which is a virtual private server.
#'
#' @param instanceName The name of the instance.
#'
#' @examples
#'
#' @export
get_instance <- function (instanceName) 
{
    op <- Operation(name = "GetInstance", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_instance_input(instanceName = instanceName)
    output <- get_instance_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns temporary SSH keys you can use to connect to a specific virtual private server, or *instance*
#'
#' Returns temporary SSH keys you can use to connect to a specific virtual private server, or *instance*.
#'
#' @param instanceName The name of the instance to access.
#' @param protocol The protocol to use to connect to your instance. Defaults to `ssh`.
#'
#' @examples
#'
#' @export
get_instance_access_details <- function (instanceName, protocol = NULL) 
{
    op <- Operation(name = "GetInstanceAccessDetails", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_instance_access_details_input(instanceName = instanceName, 
        protocol = protocol)
    output <- get_instance_access_details_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the data points for the specified Amazon Lightsail instance metric, given an instance name
#'
#' Returns the data points for the specified Amazon Lightsail instance metric, given an instance name.
#'
#' @param instanceName The name of the instance for which you want to get metrics data.
#' @param metricName The metric name to get data about.
#' @param period The time period for which you are requesting data.
#' @param startTime The start time of the time period.
#' @param endTime The end time of the time period.
#' @param unit The unit. The list of valid values is below.
#' @param statistics The instance statistics.
#'
#' @examples
#'
#' @export
get_instance_metric_data <- function (instanceName, metricName, 
    period, startTime, endTime, unit, statistics) 
{
    op <- Operation(name = "GetInstanceMetricData", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_instance_metric_data_input(instanceName = instanceName, 
        metricName = metricName, period = period, startTime = startTime, 
        endTime = endTime, unit = unit, statistics = statistics)
    output <- get_instance_metric_data_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the port states for a specific virtual private server, or *instance*
#'
#' Returns the port states for a specific virtual private server, or *instance*.
#'
#' @param instanceName The name of the instance.
#'
#' @examples
#'
#' @export
get_instance_port_states <- function (instanceName) 
{
    op <- Operation(name = "GetInstancePortStates", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_instance_port_states_input(instanceName = instanceName)
    output <- get_instance_port_states_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about a specific instance snapshot
#'
#' Returns information about a specific instance snapshot.
#'
#' @param instanceSnapshotName The name of the snapshot for which you are requesting information.
#'
#' @examples
#'
#' @export
get_instance_snapshot <- function (instanceSnapshotName) 
{
    op <- Operation(name = "GetInstanceSnapshot", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_instance_snapshot_input(instanceSnapshotName = instanceSnapshotName)
    output <- get_instance_snapshot_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns all instance snapshots for the user\'s account
#'
#' Returns all instance snapshots for the user\'s account.
#'
#' @param pageToken A token used for advancing to the next page of results from your get instance snapshots request.
#'
#' @examples
#'
#' @export
get_instance_snapshots <- function (pageToken = NULL) 
{
    op <- Operation(name = "GetInstanceSnapshots", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_instance_snapshots_input(pageToken = pageToken)
    output <- get_instance_snapshots_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the state of a specific instance
#'
#' Returns the state of a specific instance. Works on one instance at a time.
#'
#' @param instanceName The name of the instance to get state information about.
#'
#' @examples
#'
#' @export
get_instance_state <- function (instanceName) 
{
    op <- Operation(name = "GetInstanceState", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_instance_state_input(instanceName = instanceName)
    output <- get_instance_state_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about all Amazon Lightsail virtual private servers, or *instances*
#'
#' Returns information about all Amazon Lightsail virtual private servers, or *instances*.
#'
#' @param pageToken A token used for advancing to the next page of results from your get instances request.
#'
#' @examples
#'
#' @export
get_instances <- function (pageToken = NULL) 
{
    op <- Operation(name = "GetInstances", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_instances_input(pageToken = pageToken)
    output <- get_instances_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about a specific key pair
#'
#' Returns information about a specific key pair.
#'
#' @param keyPairName The name of the key pair for which you are requesting information.
#'
#' @examples
#'
#' @export
get_key_pair <- function (keyPairName) 
{
    op <- Operation(name = "GetKeyPair", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_key_pair_input(keyPairName = keyPairName)
    output <- get_key_pair_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about all key pairs in the user\'s account
#'
#' Returns information about all key pairs in the user\'s account.
#'
#' @param pageToken A token used for advancing to the next page of results from your get key pairs request.
#'
#' @examples
#'
#' @export
get_key_pairs <- function (pageToken = NULL) 
{
    op <- Operation(name = "GetKeyPairs", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_key_pairs_input(pageToken = pageToken)
    output <- get_key_pairs_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about the specified Lightsail load balancer
#'
#' Returns information about the specified Lightsail load balancer.
#'
#' @param loadBalancerName The name of the load balancer.
#'
#' @examples
#'
#' @export
get_load_balancer <- function (loadBalancerName) 
{
    op <- Operation(name = "GetLoadBalancer", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_load_balancer_input(loadBalancerName = loadBalancerName)
    output <- get_load_balancer_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about health metrics for your Lightsail load balancer
#'
#' Returns information about health metrics for your Lightsail load balancer.
#'
#' @param loadBalancerName The name of the load balancer.
#' @param metricName The metric about which you want to return information. Valid values are listed below, along with the most useful `statistics` to include in your request.
#' 
#' -   **`ClientTLSNegotiationErrorCount`** - The number of TLS connections initiated by the client that did not establish a session with the load balancer. Possible causes include a mismatch of ciphers or protocols.
#' 
#'     `Statistics`: The most useful statistic is `Sum`.
#' 
#' -   **`HealthyHostCount`** - The number of target instances that are considered healthy.
#' 
#'     `Statistics`: The most useful statistic are `Average`, `Minimum`, and `Maximum`.
#' 
#' -   **`UnhealthyHostCount`** - The number of target instances that are considered unhealthy.
#' 
#'     `Statistics`: The most useful statistic are `Average`, `Minimum`, and `Maximum`.
#' 
#' -   **`HTTPCode_LB_4XX_Count`** - The number of HTTP 4XX client error codes that originate from the load balancer. Client errors are generated when requests are malformed or incomplete. These requests have not been received by the target instance. This count does not include any response codes generated by the target instances.
#' 
#'     `Statistics`: The most useful statistic is `Sum`. Note that `Minimum`, `Maximum`, and `Average` all return `1`.
#' 
#' -   **`HTTPCode_LB_5XX_Count`** - The number of HTTP 5XX server error codes that originate from the load balancer. This count does not include any response codes generated by the target instances.
#' 
#'     `Statistics`: The most useful statistic is `Sum`. Note that `Minimum`, `Maximum`, and `Average` all return `1`. Note that `Minimum`, `Maximum`, and `Average` all return `1`.
#' 
#' -   **`HTTPCode_Instance_2XX_Count`** - The number of HTTP response codes generated by the target instances. This does not include any response codes generated by the load balancer.
#' 
#'     `Statistics`: The most useful statistic is `Sum`. Note that `Minimum`, `Maximum`, and `Average` all return `1`.
#' 
#' -   **`HTTPCode_Instance_3XX_Count`** - The number of HTTP response codes generated by the target instances. This does not include any response codes generated by the load balancer.
#' 
#'     `Statistics`: The most useful statistic is `Sum`. Note that `Minimum`, `Maximum`, and `Average` all return `1`.
#' 
#' -   **`HTTPCode_Instance_4XX_Count`** - The number of HTTP response codes generated by the target instances. This does not include any response codes generated by the load balancer.
#' 
#'     `Statistics`: The most useful statistic is `Sum`. Note that `Minimum`, `Maximum`, and `Average` all return `1`.
#' 
#' -   **`HTTPCode_Instance_5XX_Count`** - The number of HTTP response codes generated by the target instances. This does not include any response codes generated by the load balancer.
#' 
#'     `Statistics`: The most useful statistic is `Sum`. Note that `Minimum`, `Maximum`, and `Average` all return `1`.
#' 
#' -   **`InstanceResponseTime`** - The time elapsed, in seconds, after the request leaves the load balancer until a response from the target instance is received.
#' 
#'     `Statistics`: The most useful statistic is `Average`.
#' 
#' -   **`RejectedConnectionCount`** - The number of connections that were rejected because the load balancer had reached its maximum number of connections.
#' 
#'     `Statistics`: The most useful statistic is `Sum`.
#' 
#' -   **`RequestCount`** - The number of requests processed over IPv4. This count includes only the requests with a response generated by a target instance of the load balancer.
#' 
#'     `Statistics`: The most useful statistic is `Sum`. Note that `Minimum`, `Maximum`, and `Average` all return `1`.
#' @param period The time period duration for your health data request.
#' @param startTime The start time of the period.
#' @param endTime The end time of the period.
#' @param unit The unit for the time period request. Valid values are listed below.
#' @param statistics An array of statistics that you want to request metrics for. Valid values are listed below.
#' 
#' -   **`SampleCount`** - The count (number) of data points used for the statistical calculation.
#' 
#' -   **`Average`** - The value of Sum / SampleCount during the specified period. By comparing this statistic with the Minimum and Maximum, you can determine the full scope of a metric and how close the average use is to the Minimum and Maximum. This comparison helps you to know when to increase or decrease your resources as needed.
#' 
#' -   **`Sum`** - All values submitted for the matching metric added together. This statistic can be useful for determining the total volume of a metric.
#' 
#' -   **`Minimum`** - The lowest value observed during the specified period. You can use this value to determine low volumes of activity for your application.
#' 
#' -   **`Maximum`** - The highest value observed during the specified period. You can use this value to determine high volumes of activity for your application.
#'
#' @examples
#'
#' @export
get_load_balancer_metric_data <- function (loadBalancerName, 
    metricName, period, startTime, endTime, unit, statistics) 
{
    op <- Operation(name = "GetLoadBalancerMetricData", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_load_balancer_metric_data_input(loadBalancerName = loadBalancerName, 
        metricName = metricName, period = period, startTime = startTime, 
        endTime = endTime, unit = unit, statistics = statistics)
    output <- get_load_balancer_metric_data_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about the TLS certificates that are associated with the specified Lightsail load balancer
#'
#' Returns information about the TLS certificates that are associated with the specified Lightsail load balancer.
#' 
#' TLS is just an updated, more secure version of Secure Socket Layer (SSL).
#' 
#' You can have a maximum of 2 certificates associated with a Lightsail load balancer. One is active and the other is inactive.
#'
#' @param loadBalancerName The name of the load balancer you associated with your SSL/TLS certificate.
#'
#' @examples
#'
#' @export
get_load_balancer_tls_certificates <- function (loadBalancerName) 
{
    op <- Operation(name = "GetLoadBalancerTlsCertificates", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- get_load_balancer_tls_certificates_input(loadBalancerName = loadBalancerName)
    output <- get_load_balancer_tls_certificates_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about all load balancers in an account
#'
#' Returns information about all load balancers in an account.
#' 
#' If you are describing a long list of load balancers, you can paginate the output to make the list more manageable. You can use the pageToken and nextPageToken values to retrieve the next items in the list.
#'
#' @param pageToken A token used for paginating the results from your GetLoadBalancers request.
#'
#' @examples
#'
#' @export
get_load_balancers <- function (pageToken = NULL) 
{
    op <- Operation(name = "GetLoadBalancers", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_load_balancers_input(pageToken = pageToken)
    output <- get_load_balancers_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about a specific operation
#'
#' Returns information about a specific operation. Operations include events such as when you create an instance, allocate a static IP, attach a static IP, and so on.
#'
#' @param operationId A GUID used to identify the operation.
#'
#' @examples
#'
#' @export
get_operation <- function (operationId) 
{
    op <- Operation(name = "GetOperation", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_operation_input(operationId = operationId)
    output <- get_operation_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about all operations
#'
#' Returns information about all operations.
#' 
#' Results are returned from oldest to newest, up to a maximum of 200. Results can be paged by making each subsequent call to `GetOperations` use the maximum (last) `statusChangedAt` value from the previous request.
#'
#' @param pageToken A token used for advancing to the next page of results from your get operations request.
#'
#' @examples
#'
#' @export
get_operations <- function (pageToken = NULL) 
{
    op <- Operation(name = "GetOperations", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_operations_input(pageToken = pageToken)
    output <- get_operations_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets operations for a specific resource (e
#'
#' Gets operations for a specific resource (e.g., an instance or a static IP).
#'
#' @param resourceName The name of the resource for which you are requesting information.
#' @param pageToken A token used for advancing to the next page of results from your get operations for resource request.
#'
#' @examples
#'
#' @export
get_operations_for_resource <- function (resourceName, pageToken = NULL) 
{
    op <- Operation(name = "GetOperationsForResource", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_operations_for_resource_input(resourceName = resourceName, 
        pageToken = pageToken)
    output <- get_operations_for_resource_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a list of all valid regions for Amazon Lightsail
#'
#' Returns a list of all valid regions for Amazon Lightsail. Use the `include availability zones` parameter to also return the availability zones in a region.
#'
#' @param includeAvailabilityZones A Boolean value indicating whether to also include Availability Zones in your get regions request. Availability Zones are indicated with a letter: e.g., `us-east-2a`.
#'
#' @examples
#'
#' @export
get_regions <- function (includeAvailabilityZones = NULL) 
{
    op <- Operation(name = "GetRegions", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_regions_input(includeAvailabilityZones = includeAvailabilityZones)
    output <- get_regions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about a specific static IP
#'
#' Returns information about a specific static IP.
#'
#' @param staticIpName The name of the static IP in Lightsail.
#'
#' @examples
#'
#' @export
get_static_ip <- function (staticIpName) 
{
    op <- Operation(name = "GetStaticIp", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_static_ip_input(staticIpName = staticIpName)
    output <- get_static_ip_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about all static IPs in the user\'s account
#'
#' Returns information about all static IPs in the user\'s account.
#'
#' @param pageToken A token used for advancing to the next page of results from your get static IPs request.
#'
#' @examples
#'
#' @export
get_static_ips <- function (pageToken = NULL) 
{
    op <- Operation(name = "GetStaticIps", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_static_ips_input(pageToken = pageToken)
    output <- get_static_ips_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Imports a public SSH key from a specific key pair
#'
#' Imports a public SSH key from a specific key pair.
#'
#' @param keyPairName The name of the key pair for which you want to import the public key.
#' @param publicKeyBase64 A base64-encoded public key of the `ssh-rsa` type.
#'
#' @examples
#'
#' @export
import_key_pair <- function (keyPairName, publicKeyBase64) 
{
    op <- Operation(name = "ImportKeyPair", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- import_key_pair_input(keyPairName = keyPairName, 
        publicKeyBase64 = publicKeyBase64)
    output <- import_key_pair_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a Boolean value indicating whether your Lightsail VPC is peered
#'
#' Returns a Boolean value indicating whether your Lightsail VPC is peered.
#'
#' @examples
#'
#' @export
is_vpc_peered <- function () 
{
    op <- Operation(name = "IsVpcPeered", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- is_vpc_peered_input()
    output <- is_vpc_peered_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Adds public ports to an Amazon Lightsail instance
#'
#' Adds public ports to an Amazon Lightsail instance.
#'
#' @param portInfo An array of key-value pairs containing information about the port mappings.
#' @param instanceName The name of the instance for which you want to open the public ports.
#'
#' @examples
#'
#' @export
open_instance_public_ports <- function (portInfo, instanceName) 
{
    op <- Operation(name = "OpenInstancePublicPorts", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- open_instance_public_ports_input(portInfo = portInfo, 
        instanceName = instanceName)
    output <- open_instance_public_ports_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Tries to peer the Lightsail VPC with the user\'s default VPC
#'
#' Tries to peer the Lightsail VPC with the user\'s default VPC.
#'
#' @examples
#'
#' @export
peer_vpc <- function () 
{
    op <- Operation(name = "PeerVpc", http_method = "POST", http_path = "/", 
        paginator = list())
    input <- peer_vpc_input()
    output <- peer_vpc_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Sets the specified open ports for an Amazon Lightsail instance, and closes all ports for every protocol not included in the current request
#'
#' Sets the specified open ports for an Amazon Lightsail instance, and closes all ports for every protocol not included in the current request.
#'
#' @param portInfos Specifies information about the public port(s).
#' @param instanceName The Lightsail instance name of the public port(s) you are setting.
#'
#' @examples
#'
#' @export
put_instance_public_ports <- function (portInfos, instanceName) 
{
    op <- Operation(name = "PutInstancePublicPorts", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- put_instance_public_ports_input(portInfos = portInfos, 
        instanceName = instanceName)
    output <- put_instance_public_ports_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Restarts a specific instance
#'
#' Restarts a specific instance. When your Amazon Lightsail instance is finished rebooting, Lightsail assigns a new public IP address. To use the same IP address after restarting, create a static IP address and attach it to the instance.
#'
#' @param instanceName The name of the instance to reboot.
#'
#' @examples
#'
#' @export
reboot_instance <- function (instanceName) 
{
    op <- Operation(name = "RebootInstance", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- reboot_instance_input(instanceName = instanceName)
    output <- reboot_instance_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a specific static IP from your account
#'
#' Deletes a specific static IP from your account.
#'
#' @param staticIpName The name of the static IP to delete.
#'
#' @examples
#'
#' @export
release_static_ip <- function (staticIpName) 
{
    op <- Operation(name = "ReleaseStaticIp", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- release_static_ip_input(staticIpName = staticIpName)
    output <- release_static_ip_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Starts a specific Amazon Lightsail instance from a stopped state
#'
#' Starts a specific Amazon Lightsail instance from a stopped state. To restart an instance, use the reboot instance operation.
#'
#' @param instanceName The name of the instance (a virtual private server) to start.
#'
#' @examples
#'
#' @export
start_instance <- function (instanceName) 
{
    op <- Operation(name = "StartInstance", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- start_instance_input(instanceName = instanceName)
    output <- start_instance_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Stops a specific Amazon Lightsail instance that is currently running
#'
#' Stops a specific Amazon Lightsail instance that is currently running.
#'
#' @param instanceName The name of the instance (a virtual private server) to stop.
#' @param force When set to `True`, forces a Lightsail instance that is stuck in a `stopping` state to stop.
#' 
#' Only use the `force` parameter if your instance is stuck in the `stopping` state. In any other state, your instance should stop normally without adding this parameter to your API request.
#'
#' @examples
#'
#' @export
stop_instance <- function (instanceName, force = NULL) 
{
    op <- Operation(name = "StopInstance", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- stop_instance_input(instanceName = instanceName, 
        force = force)
    output <- stop_instance_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Attempts to unpeer the Lightsail VPC from the user\'s default VPC
#'
#' Attempts to unpeer the Lightsail VPC from the user\'s default VPC.
#'
#' @examples
#'
#' @export
unpeer_vpc <- function () 
{
    op <- Operation(name = "UnpeerVpc", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- unpeer_vpc_input()
    output <- unpeer_vpc_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates a domain recordset after it is created
#'
#' Updates a domain recordset after it is created.
#'
#' @param domainName The name of the domain recordset to update.
#' @param domainEntry An array of key-value pairs containing information about the domain entry.
#'
#' @examples
#'
#' @export
update_domain_entry <- function (domainName, domainEntry) 
{
    op <- Operation(name = "UpdateDomainEntry", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_domain_entry_input(domainName = domainName, 
        domainEntry = domainEntry)
    output <- update_domain_entry_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the specified attribute for a load balancer
#'
#' Updates the specified attribute for a load balancer. You can only update one attribute at a time.
#'
#' @param loadBalancerName The name of the load balancer that you want to modify (e.g., `my-load-balancer`.
#' @param attributeName The name of the attribute you want to update. Valid values are below.
#' @param attributeValue The value that you want to specify for the attribute name.
#'
#' @examples
#'
#' @export
update_load_balancer_attribute <- function (loadBalancerName, 
    attributeName, attributeValue) 
{
    op <- Operation(name = "UpdateLoadBalancerAttribute", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_load_balancer_attribute_input(loadBalancerName = loadBalancerName, 
        attributeName = attributeName, attributeValue = attributeValue)
    output <- update_load_balancer_attribute_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
