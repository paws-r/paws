% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/codepipeline_operations.R
\name{codepipeline_enable_stage_transition}
\alias{codepipeline_enable_stage_transition}
\title{Enables artifacts in a pipeline to transition to a stage in a pipeline}
\usage{
codepipeline_enable_stage_transition(pipelineName, stageName, transitionType)
}
\arguments{
\item{pipelineName}{[required] The name of the pipeline in which you want to enable the flow of
artifacts from one stage to another.}

\item{stageName}{[required] The name of the stage where you want to enable the transition of
artifacts, either into the stage (inbound) or from that stage to the
next stage (outbound).}

\item{transitionType}{[required] Specifies whether artifacts are allowed to enter the stage and be
processed by the actions in that stage (inbound) or whether already
processed artifacts are allowed to transition to the next stage
(outbound).}
}
\description{
Enables artifacts in a pipeline to transition to a stage in a pipeline.

See \url{https://www.paws-r-sdk.com/docs/codepipeline_enable_stage_transition/} for full documentation.
}
\keyword{internal}
