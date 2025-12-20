# Helper function to create DynamoDB-like interface
recursive_interface <- function() {
  Map(Structure(
    S = Scalar(type = "string"),
    N = Scalar(type = "string"),
    B = Scalar(type = "blob"),
    SS = List(Scalar(type = "string")),
    NS = List(Scalar(type = "string")),
    BS = List(Scalar(type = "blob")),
    M = Map(structure(logical(0), tags = list(type = "structure"))),
    L = List(structure(logical(0), tags = list(type = "structure"))),
    NULL = Bool(),
    BOOL = Bool()
  ))
}

test_that("populate handles scalar with empty interface", {
  result <- populate(123.456, list())

  expect_equal(result, 123.456, ignore_attr = TRUE)
})

test_that("populate handles structure with empty interface", {
  input <- list(a = 1, b = 2)
  result <- populate(input, empty_struct_interface)

  expect_equal(result, input, ignore_attr = TRUE)
  expect_equal(tag_get(result, "type"), "structure")
})

test_that("populate handles nested structures with empty interface", {
  input <- list(outer = list(M = list(inner = list(N = 123.456))))

  interface <- recursive_interface()
  result <- populate(input, interface)

  # Check that the deeply nested N value has string type tag
  expect_equal(tag_get(result$outer$M$inner$N, "type"), "string")

  # Check JSON output has quoted numbers
  json_output <- json_build(result)
  expect_match(json_output, '"N":"123.456"')
})

test_that("populate handles deeply nested maps (depth 3)", {
  input <- list(
    "level0" = list(M = list("level1" = list(M = list("level2" = list(N = 456.789)))))
  )

  interface <- recursive_interface()
  result <- populate(input, interface)

  # Check type tags at each level
  expect_equal(tag_get(result$level0$M, "type"), "map")
  expect_equal(tag_get(result$level0$M$level1, "type"), "structure")
  # The nested M within level1 is correctly recognized as a map because
  # the fix now reuses the parent AttributeValue structure for recursive interfaces
  expect_equal(tag_get(result$level0$M$level1$M, "type"), "map")
  expect_equal(tag_get(result$level0$M$level1$M$level2, "type"), "structure")
  expect_equal(tag_get(result$level0$M$level1$M$level2$N, "type"), "string")

  # Check JSON output
  json_output <- json_build(result)
  expect_match(json_output, '"N":"456.789"')
})

test_that("populate handles deeply nested lists (depth 3)", {
  input <- list(
    "item1" = list(
      L = list(
        list(N = 111.111),
        list(N = 222.222),
        list(L = list(list(N = 333.333), list(N = 444.444)))
      )
    )
  )

  interface <- recursive_interface()
  result <- populate(input, interface)

  # Check type tags
  expect_equal(tag_get(result$item1$L, "type"), "list")
  expect_equal(tag_get(result$item1$L[[1]]$N, "type"), "string")
  expect_equal(tag_get(result$item1$L[[3]]$L, "type"), "list")
  expect_equal(tag_get(result$item1$L[[3]]$L[[1]]$N, "type"), "string")

  # Check JSON output
  json_output <- json_build(result)
  expect_match(json_output, '"N":"111.111"')
  expect_match(json_output, '"N":"333.333"')
  expect_match(json_output, '"N":"444.444"')
})

test_that("populate handles mixed structures (maps and lists)", {
  input <- list(
    "mixed" = list(
      M = list(
        "key1" = list(
          L = list(list(N = 111.111), list(M = list("nested" = list(N = 222.222))))
        )
      )
    )
  )

  interface <- recursive_interface()
  result <- populate(input, interface)

  # Check type tags at various nesting levels
  expect_equal(tag_get(result$mixed$M, "type"), "map")
  expect_equal(tag_get(result$mixed$M$key1, "type"), "structure")
  expect_equal(tag_get(result$mixed$M$key1$L, "type"), "list")
  expect_equal(tag_get(result$mixed$M$key1$L[[1]]$N, "type"), "string")
  expect_equal(tag_get(result$mixed$M$key1$L[[2]], "type"), "structure")
  # Nested M is correctly recognized as a map because
  # the fix now reuses the parent AttributeValue structure for recursive interfaces
  expect_equal(tag_get(result$mixed$M$key1$L[[2]]$M, "type"), "map")
  expect_equal(tag_get(result$mixed$M$key1$L[[2]]$M$nested$N, "type"), "string")

  # Check JSON output
  json_output <- json_build(result)
  expect_match(json_output, '"N":"111.111"')
  expect_match(json_output, '"N":"222.222"')
})

test_that("populate handles numeric values correctly in deeply nested structures", {
  # Create a nested structure with various numeric types
  input <- list(
    "root" = list(
      M = list(
        "integers" = list(N = 42L),
        "doubles" = list(N = 3.14159),
        "scientific" = list(N = 1.23e-10)
      )
    )
  )

  interface <- recursive_interface()
  result <- populate(input, interface)

  # All numeric types should have string type tag
  expect_equal(tag_get(result$root$M$integers$N, "type"), "string")
  expect_equal(tag_get(result$root$M$doubles$N, "type"), "string")
  expect_equal(tag_get(result$root$M$scientific$N, "type"), "string")

  # Check JSON has quoted values
  json_output <- json_build(result)
  expect_match(json_output, '"N":"42"')
  expect_match(json_output, '"N":"3.14159"')
})

test_that("populate handles boolean values in nested structures", {
  input <- list("item" = list(BOOL = TRUE, M = list(nested = list(BOOL = FALSE))))

  interface <- recursive_interface()
  result <- populate(input, interface)

  # Boolean values should have boolean type tag
  expect_equal(tag_get(result$item$BOOL, "type"), "boolean")
  expect_equal(tag_get(result$item$M$nested$BOOL, "type"), "boolean")

  # Check JSON has unquoted boolean values
  json_output <- json_build(result)
  expect_match(json_output, '"BOOL":true')
  expect_match(json_output, '"BOOL":false')
})

test_that("populate handles string values in nested structures", {
  input <- list("item" = list(S = "hello", M = list(nested = list(S = "world"))))

  interface <- recursive_interface()
  result <- populate(input, interface)

  # String values should have string type tag
  expect_equal(tag_get(result$item$S, "type"), "string")
  expect_equal(tag_get(result$item$M$nested$S, "type"), "string")

  # Check JSON has quoted string values
  json_output <- json_build(result)
  expect_match(json_output, '"S":"hello"')
  expect_match(json_output, '"S":"world"')
})

test_that("populate handles empty lists and maps at deep nesting", {
  input <- list("item" = list(L = list(), M = list()))

  interface <- recursive_interface()
  result <- populate(input, interface)

  # Empty structures should still have type tags
  expect_equal(tag_get(result$item$L, "type"), "list")
  expect_equal(tag_get(result$item$M, "type"), "map")

  # Check JSON has empty array and object
  # Note: empty structures may be omitted from JSON output
  json_output <- json_build(result)
  expect_true(grepl("\\{\\}", json_output) || grepl("\\[\\]", json_output))
})

test_that("populate preserves existing attributes when interface is not empty", {
  # Create interface with specific attributes
  interface <- structure(
    list(
      a = structure(logical(0), tags = list(type = "string", locationName = "custom_a"))
    ),
    tags = list(type = "structure")
  )

  input <- list(a = "value")
  result <- populate(input, interface)

  # Should preserve locationName attribute
  expect_equal(tag_get(result$a, "locationName"), "custom_a")
  expect_equal(tag_get(result$a, "type"), "string")
})

test_that("populate handles very deep nesting (depth 5)", {
  # Create a structure nested 5 levels deep
  input <- list(
    "l1" = list(
      M = list(
        "l2" = list(
          M = list("l3" = list(M = list("l4" = list(M = list("l5" = list(N = 999.999))))))
        )
      )
    )
  )

  interface <- recursive_interface()
  result <- populate(input, interface)

  # Check the deeply nested value has correct type
  expect_equal(tag_get(result$l1$M$l2$M$l3$M$l4$M$l5$N, "type"), "string")

  # Check JSON output
  json_output <- json_build(result)
  expect_match(json_output, '"N":"999.999"')
})

test_that("populate throws error for invalid field names", {
  interface <- structure(
    list(valid_field = structure(logical(0), tags = list(type = "string"))),
    tags = list(type = "structure")
  )
  input <- list(invalid_field = "value")

  expect_error(populate(input, interface), "invalid name: invalid_field")
})

test_that("populate handles NULL input", {
  interface <- structure(logical(0), tags = list(type = "string"))
  result <- populate(NULL, interface)

  expect_true(is.list(result))
  expect_length(result, 0)
})

test_that("populate handles atomic vectors in lists", {
  interface <- List(Scalar(type = "string"))

  # Logical vector
  result_logical <- populate(c(TRUE, FALSE, TRUE), interface)
  expect_length(result_logical, 3)
  expect_equal(result_logical[[1]], TRUE, ignore_attr = TRUE)
  expect_equal(result_logical[[2]], FALSE, ignore_attr = TRUE)
  expect_equal(result_logical[[3]], TRUE, ignore_attr = TRUE)

  # Integer vector
  result_int <- populate(c(1L, 2L, 3L), interface)
  expect_length(result_int, 3)
  expect_equal(result_int[[1]], 1L, ignore_attr = TRUE)
  expect_equal(result_int[[2]], 2L, ignore_attr = TRUE)
  expect_equal(result_int[[3]], 3L, ignore_attr = TRUE)

  # Numeric vector
  result_num <- populate(c(1.1, 2.2, 3.3), interface)
  expect_length(result_num, 3)
  expect_equal(result_num[[1]], 1.1, ignore_attr = TRUE)
  expect_equal(result_num[[2]], 2.2, ignore_attr = TRUE)
  expect_equal(result_num[[3]], 3.3, ignore_attr = TRUE)
})

test_that("populate handles complex and raw vectors", {
  interface <- List(Scalar(type = "string"))

  # Complex vector
  result_complex <- populate(c(1 + 2i, 3 + 4i), interface)
  expect_length(result_complex, 2)
  expect_equal(result_complex[[1]], 1 + 2i, ignore_attr = TRUE)
  expect_equal(result_complex[[2]], 3 + 4i, ignore_attr = TRUE)

  # Raw vector
  result_raw <- populate(as.raw(c(1, 2, 3)), interface)
  expect_length(result_raw, 3)
  expect_equal(result_raw[[1]], as.raw(1), ignore_attr = TRUE)
  expect_equal(result_raw[[2]], as.raw(2), ignore_attr = TRUE)
  expect_equal(result_raw[[3]], as.raw(3), ignore_attr = TRUE)
})

test_that("populate handles character vectors", {
  interface <- List(Scalar(type = "string"))

  # Character vector
  result_char <- populate(c("a", "b", "c"), interface)
  expect_length(result_char, 3)
  expect_equal(result_char[[1]], "a", ignore_attr = TRUE)
  expect_equal(result_char[[2]], "b", ignore_attr = TRUE)
  expect_equal(result_char[[3]], "c", ignore_attr = TRUE)
})

test_that("populate handles NULL input with interface containing attributes", {
  interface <- structure(
    logical(0),
    tags = list(type = "string", locationName = "test_field")
  )
  result <- populate(NULL, interface)

  expect_true(is.list(result))
  expect_length(result, 0)
  expect_equal(tag_get(result, "type"), "string")
  expect_equal(tag_get(result, "locationName"), "test_field")
})
