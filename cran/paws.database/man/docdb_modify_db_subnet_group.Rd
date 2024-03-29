% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/docdb_operations.R
\name{docdb_modify_db_subnet_group}
\alias{docdb_modify_db_subnet_group}
\title{Modifies an existing subnet group}
\usage{
docdb_modify_db_subnet_group(
  DBSubnetGroupName,
  DBSubnetGroupDescription = NULL,
  SubnetIds
)
}
\arguments{
\item{DBSubnetGroupName}{[required] The name for the subnet group. This value is stored as a lowercase
string. You can't modify the default subnet group.

Constraints: Must match the name of an existing \code{DBSubnetGroup}. Must
not be default.

Example: \code{mySubnetgroup}}

\item{DBSubnetGroupDescription}{The description for the subnet group.}

\item{SubnetIds}{[required] The Amazon EC2 subnet IDs for the subnet group.}
}
\description{
Modifies an existing subnet group. subnet groups must contain at least one subnet in at least two Availability Zones in the Amazon Web Services Region.

See \url{https://www.paws-r-sdk.com/docs/docdb_modify_db_subnet_group/} for full documentation.
}
\keyword{internal}
