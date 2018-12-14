context("Make interfaces and shapes")

test_that("scalar", {
  api <- list(
    shapes = list(
      FooShape = list(
        type = "string"
      )
    )
  )
  out <- make_shape(list(shape = "FooShape"), api = api)
  expect_length(out, 0)
  expect_equal(tag_get(out, "type"), "string")
  expect_equal(tag_get(out, "shape"), "FooShape")
})

test_that("structure with one scalar member", {
  api <- list(
    shapes = list(
      StructureShape = list(
        type = "structure",
        members = list(
          StringShape = list(
            shape = "StringShape"
          )
        )
      ),
      StringShape = list(
        type = "string"
      )
    )
  )
  out <- make_shape(list(shape = "StructureShape"), api = api)
  expect_length(out, 1)
  expect_equal(tag_get(out, "type"), "structure")
  expect_length(out$StringShape, 0)
  expect_equal(tag_get(out$StringShape, "type"), "string")
})

test_that("structure with multiple scalar members", {
  api <- list(
    shapes = list(
      StructureShape = list(
        type = "structure",
        members = list(
          String = list(
            shape = "StringShape"
          ),
          Double = list(
            shape = "DoubleShape"
          ),
          Boolean = list(
            shape = "BooleanShape"
          )
        )
      ),
      StringShape = list(
        type = "string"
      ),
      DoubleShape = list(
        type = "double"
      ),
      BooleanShape = list(
        type = "boolean"
      )
    )
  )
  out <- make_shape(list(shape = "StructureShape"), api = api)
  expect_length(out, 3)
  expect_equal(tag_get(out, "type"), "structure")
  expect_length(out$String, 0)
  expect_equal(tag_get(out$String, "type"), "string")
  expect_length(out$Double, 0)
  expect_equal(tag_get(out$Double, "type"), "double")
  expect_length(out$Boolean, 0)
  expect_equal(tag_get(out$Boolean, "type"), "boolean")
})

test_that("nested structure", {
  api <- list(
    shapes = list(
      StructureShape = list(
        type = "structure",
        members = list(
          Foo = list(
            shape = "FooShape"
          )
        )
      ),
      FooShape = list(
        type = "structure",
        members = list(
          Bar = list(
            shape = "BarShape"
          )
        )
      ),
      BarShape = list(
        type = "structure",
        members = list(
          Baz = list(
            shape = "BazShape"
          )
        )
      ),
      BazShape = list(
        type = "double"
      )
    )
  )
  out <- make_shape(list(shape = "StructureShape"), api = api)
  expect_length(out, 1)
  expect_equal(tag_get(out, "type"), "structure")
  expect_length(out$Foo, 1)
  expect_equal(tag_get(out$Foo, "type"), "structure")
  expect_length(out$Foo$Bar, 1)
  expect_equal(tag_get(out$Foo$Bar, "type"), "structure")
  expect_length(out$Foo$Bar$Baz, 0)
  expect_equal(tag_get(out$Foo$Bar$Baz, "type"), "double")
})

test_that("list of scalars", {
  api <- list(
    shapes = list(
      ListShape = list(
        type = "list",
        member = list(
          shape = "StringShape"
        )
      ),
      StringShape = list(
        type = "string"
      )
    )
  )
  out <- make_shape(list(shape = "ListShape"), api = api)
  expect_length(out, 1)
  expect_equal(tag_get(out, "type"), "list")
  expect_length(out[[1]], 0)
  expect_equal(tag_get(out[[1]], "type"), "string")
})

test_that("list of structures", {
  api <- list(
    shapes = list(
      ListShape = list(
        type = "list",
        member = list(
          shape = "StructureShape"
        )
      ),
      StructureShape = list(
        type = "structure",
        members = list(
          String = list(
            shape = "StringShape"
          )
        )
      ),
      StringShape = list(
        type = "string"
      )
    )
  )
  out <- make_shape(list(shape = "ListShape"), api = api)
  expect_length(out, 1)
  expect_equal(tag_get(out, "type"), "list")
  expect_length(out[[1]], 1)
  expect_equal(tag_get(out[[1]], "type"), "structure")
  expect_length(out[[1]]$String, 0)
  expect_equal(tag_get(out[[1]]$String, "type"), "string")
})

test_that("map of scalars", {
  api <- list(
    shapes = list(
      MapShape = list(
        type = "map",
        key = list(
          shape = "StringShape"
        ),
        value = list(
          shape = "StringShape"
        )
      ),
      StringShape = list(
        type = "string"
      )
    )
  )
  out <- make_shape(list(shape = "MapShape"), api = api)
  expect_length(out, 1)
  expect_equal(tag_get(out, "type"), "map")
  expect_length(out[[1]], 0)
  expect_equal(tag_get(out[[1]], "type"), "string")
})

test_that("location name for lists", {
  api <- list(
    shapes = list(
      StructureShape = list(
        type = "structure",
        members = list(
          List = list(
            shape = "ListShape"
          )
        )
      ),
      ListShape = list(
        type = "list",
        member = list(
          shape = "StringShape",
          locationName = "Foo"
        ),
        flattened = TRUE
      ),
      StringShape = list(
        type = "string"
      )
    )
  )
  out <- make_shape(list(shape = "StructureShape"), api = api)
  expect_equal(tag_get(out$List, "type"), "list")
  expect_equal(tag_get(out$List, "locationNameList"), "Foo")

})

test_that("location name for maps", {
  api <- list(
    shapes = list(
      StructureShape = list(
        type = "structure",
        members = list(
          Map = list(
            shape = "MapShape"
          )
        )
      ),
      MapShape = list(
        type = "map",
        key = list(
          shape = "StringShape",
          locationName = "Foo"
        ),
        value = list(
          shape = "StringShape",
          locationName = "Bar"
        ),
        flattened = TRUE,
        locationName = "Map"
      ),
      StringShape = list(
        type = "string"
      )
    )
  )
  out <- make_shape(list(shape = "StructureShape"), api = api)
  expect_equal(tag_get(out$Map, "type"), "map")
  expect_equal(tag_get(out$Map, "locationNameKey"), "Foo")
  expect_equal(tag_get(out$Map, "locationNameValue"), "Bar")
})

test_that("stop loops", {
  api <- list(
    shapes = list(
      ListShape = list(
        type = "list",
        member = list(
          shape = "StructureShape"
        )
      ),
      StructureShape = list(
        type = "structure",
        members = list(
          List = list(
            shape = "ListShape"
          )
        )
      )
    )
  )
  out <- make_shape(list(shape = "ListShape"), api = api)
  expect_length(out, 1)
  expect_equal(tag_get(out, "type"), "list")
  expect_length(out[[1]], 1)
  expect_equal(tag_get(out[[1]], "type"), "structure")
  expect_length(out[[1]]$List, 0)
  expect_equal(tag_get(out[[1]]$List, "type"), "list")
})
