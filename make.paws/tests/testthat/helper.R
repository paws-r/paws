# Basic extension of mockery::mock function
# Allows side_effect functions, for example a simple pass function:
# pass <- mock2(side_effect = function(...) list(...))
# f <- function(x, y = NULL, z = NULL) stop("error")
# g <- function(...) do.call(f, list(...))
# mockery::stub(g, 'f', pass)
#
# g(x = "yo")
# g(x = "yo", y= "foo")
# g(x = "yo", y= "foo", z = "var")
#
# mock_arg(pass)
# $x
# [1] "yo"
#
# $y
# [1] "hi"
#
# $z
# [1] "bye"
mock2 <- function(..., cycle = FALSE, side_effect = NULL, envir = parent.frame()){
  return_values <- eval(substitute(alist(...)))
  return_values_env <- envir
  call_no <- 0
  calls <- list()
  args <- list()
  mock <- function(...){
    call_no <<- call_no + 1
    calls[[call_no]] <<- match.call()
    args[[call_no]] <<- list(...)
    if (length(return_values)) {
      if (call_no > length(return_values) && !cycle)
        stop("too many calls to mock object and cycle set to FALSE", call.=FALSE)
      value <- return_values[[
        (call_no - 1)%%length(return_values) + 1
      ]]
      return(eval(value, envir = return_values_env))
    }

    if(!is.null(side_effect)){
      return(side_effect(...))
    }
  }
  class(mock) <- "mock"
  return(mock)
}


# retrieves a list of all arguments used for the last mocked function call
mock_arg <- function(m){
  env <- environment(m)
  if (env$call_no == 0)
    return(NULL)
  return(env$args[[env$call_no]])
}

# counts the number of times the mocked function was called
mock_call_no <- function(m){
  environment(m)$call_no
}
