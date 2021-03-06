% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/emr_operations.R
\name{emr_list_instance_groups}
\alias{emr_list_instance_groups}
\title{Provides all available details about the instance groups in a cluster}
\usage{
emr_list_instance_groups(ClusterId, Marker)
}
\arguments{
\item{ClusterId}{[required] The identifier of the cluster for which to list the instance groups.}

\item{Marker}{The pagination token that indicates the next set of results to retrieve.}
}
\value{
A list with the following syntax:\preformatted{list(
  InstanceGroups = list(
    list(
      Id = "string",
      Name = "string",
      Market = "ON_DEMAND"|"SPOT",
      InstanceGroupType = "MASTER"|"CORE"|"TASK",
      BidPrice = "string",
      InstanceType = "string",
      RequestedInstanceCount = 123,
      RunningInstanceCount = 123,
      Status = list(
        State = "PROVISIONING"|"BOOTSTRAPPING"|"RUNNING"|"RECONFIGURING"|"RESIZING"|"SUSPENDED"|"TERMINATING"|"TERMINATED"|"ARRESTED"|"SHUTTING_DOWN"|"ENDED",
        StateChangeReason = list(
          Code = "INTERNAL_ERROR"|"VALIDATION_ERROR"|"INSTANCE_FAILURE"|"CLUSTER_TERMINATED",
          Message = "string"
        ),
        Timeline = list(
          CreationDateTime = as.POSIXct(
            "2015-01-01"
          ),
          ReadyDateTime = as.POSIXct(
            "2015-01-01"
          ),
          EndDateTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      Configurations = list(
        list(
          Classification = "string",
          Configurations = list(),
          Properties = list(
            "string"
          )
        )
      ),
      ConfigurationsVersion = 123,
      LastSuccessfullyAppliedConfigurations = list(
        list(
          Classification = "string",
          Configurations = list(),
          Properties = list(
            "string"
          )
        )
      ),
      LastSuccessfullyAppliedConfigurationsVersion = 123,
      EbsBlockDevices = list(
        list(
          VolumeSpecification = list(
            VolumeType = "string",
            Iops = 123,
            SizeInGB = 123
          ),
          Device = "string"
        )
      ),
      EbsOptimized = TRUE|FALSE,
      ShrinkPolicy = list(
        DecommissionTimeout = 123,
        InstanceResizePolicy = list(
          InstancesToTerminate = list(
            "string"
          ),
          InstancesToProtect = list(
            "string"
          ),
          InstanceTerminationTimeout = 123
        )
      ),
      AutoScalingPolicy = list(
        Status = list(
          State = "PENDING"|"ATTACHING"|"ATTACHED"|"DETACHING"|"DETACHED"|"FAILED",
          StateChangeReason = list(
            Code = "USER_REQUEST"|"PROVISION_FAILURE"|"CLEANUP_FAILURE",
            Message = "string"
          )
        ),
        Constraints = list(
          MinCapacity = 123,
          MaxCapacity = 123
        ),
        Rules = list(
          list(
            Name = "string",
            Description = "string",
            Action = list(
              Market = "ON_DEMAND"|"SPOT",
              SimpleScalingPolicyConfiguration = list(
                AdjustmentType = "CHANGE_IN_CAPACITY"|"PERCENT_CHANGE_IN_CAPACITY"|"EXACT_CAPACITY",
                ScalingAdjustment = 123,
                CoolDown = 123
              )
            ),
            Trigger = list(
              CloudWatchAlarmDefinition = list(
                ComparisonOperator = "GREATER_THAN_OR_EQUAL"|"GREATER_THAN"|"LESS_THAN"|"LESS_THAN_OR_EQUAL",
                EvaluationPeriods = 123,
                MetricName = "string",
                Namespace = "string",
                Period = 123,
                Statistic = "SAMPLE_COUNT"|"AVERAGE"|"SUM"|"MINIMUM"|"MAXIMUM",
                Threshold = 123.0,
                Unit = "NONE"|"SECONDS"|"MICRO_SECONDS"|"MILLI_SECONDS"|"BYTES"|"KILO_BYTES"|"MEGA_BYTES"|"GIGA_BYTES"|"TERA_BYTES"|"BITS"|"KILO_BITS"|"MEGA_BITS"|"GIGA_BITS"|"TERA_BITS"|"PERCENT"|"COUNT"|"BYTES_PER_SECOND"|"KILO_BYTES_PER_SECOND"|"MEGA_BYTES_PER_SECOND"|"GIGA_BYTES_PER_SECOND"|"TERA_BYTES_PER_SECOND"|"BITS_PER_SECOND"|"KILO_BITS_PER_SECOND"|"MEGA_BITS_PER_SECOND"|"GIGA_BITS_PER_SECOND"|"TERA_BITS_PER_SECOND"|"COUNT_PER_SECOND",
                Dimensions = list(
                  list(
                    Key = "string",
                    Value = "string"
                  )
                )
              )
            )
          )
        )
      )
    )
  ),
  Marker = "string"
)
}
}
\description{
Provides all available details about the instance groups in a cluster.
}
\section{Request syntax}{
\preformatted{svc$list_instance_groups(
  ClusterId = "string",
  Marker = "string"
)
}
}

\keyword{internal}
