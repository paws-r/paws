# Get code coverage for one or more directories, combine, and upload to Codecov.
# Directories are provided as command line arguments.
# e.g. `R -f codecov.R paws.common paws.codegen`

args <- commandArgs(trailingOnly = TRUE)

result <- lapply(args, function(dir) {
  pkg <- covr::package_coverage(dir)
  names(pkg) <- paste0(dir, "/R/", names(pkg))
  return(pkg)
})

coverage <- do.call(c, result)
class(coverage) <- class(result[[1]])

covr::codecov(coverage = coverage)
