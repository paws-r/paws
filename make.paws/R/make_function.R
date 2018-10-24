# Return a function given a function body and parameters. `body` must be a
# language object, e.g. returned by `body()`. `params` must be an `alist`.
make_function <- function(body, params) {
  f <- function() {}
  body(f) <- body
  formals(f) <- params
  environment(f) <- .GlobalEnv
  return(f)
}

# Substitute parts of `x` with values in `env`.
substitute_q <- function(x, env) {
  call <- substitute(substitute(y, env), list(y = x))
  eval(call)
}

# Return a function body with a given expression.
make_function_template <- function(expr) {
  f <- make_function(substitute(expr), alist())
  return(body(f))
}

# Make a function and assign it to a name, given a function template, template
# substitution values, and function parameters.
make_function_from_template <- function(name, template, subs, params) {
  fn_body <- substitute_q(template, subs)
  fn_def <- make_function(fn_body, params)
  fn <- substitute(
    .NAME <- .FUNCTION,
    list(.NAME = as.symbol(name), .FUNCTION = fn_def)
  )
  string <- language_to_string(fn)
  return(string)
}

# Make a template with an arbitrary block of code.
# Provide multi-line code blocks within curly brackets, e.g.
# make_code_template({
#   foo <- 1
#   bar <- 2
# })
make_code_template <- function(arg) {
  expr <- substitute(arg)
  if (class(expr) == "{") {
    template <- expr[-1]
  } else {
    template <- expr
  }
  return(template)
}

# Render a code template from `make_code_template`.
render_code_template <- function(template, values) {
  code <- substitute_q(template, values)
  result <- paste(code, collapse = "\n")
  return(result)
}

# Make a function call, e.g. make_call("f", c("a", "b")) -> f("a", "b").
make_call <- function(func, params) {
  call <- quote(f())
  call[[1]] <- as.symbol(func)
  for (i in seq_along(params)) {
    param <- names(params)[i]
    arg <- params[[i]]
    call[[i + 1]] <- params[[i]]
    if (!is.null(param)) {
      names(call)[i + 1] <- param
    }
  }
  return(call)
}

# Convert a language object (e.g. from make_function_from_template) to a string.
language_to_string <- function(lang) {
  string <- paste0(deparse(lang), collapse = "\n")
  return(string)
}
