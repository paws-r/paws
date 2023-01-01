test_that("add_package_name_to_links", {
  input <- "aaa \n link[=target1]{foo1} \n link[=target2]{foo2} \n b"
  expected <- "aaa \n link[package:target1]{foo1} \n link[package:target2]{foo2} \n b"
  expect_equal(add_package_name_to_links(input, "package"), expected)
})
