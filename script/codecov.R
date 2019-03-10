# Get code coverage for one or more directories, combine, and upload to Codecov.
# Directories are provided as command line arguments.
# e.g. `Rscript script/codecov.R paws.common make.paws`

args <- commandArgs(trailingOnly = TRUE)

result <- lapply(args, function(dir) {
  pkg <- covr::package_coverage(dir)
  names(pkg) <- paste0(dir, "/R/", names(pkg))
  return(pkg)
})

coverage <- do.call(c, result)
attr(coverage, "package") <- list(path = "")
class(coverage) <- class(result[[1]])

covr::codecov(coverage = coverage)
