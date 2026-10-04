svc <- paws::customerprofiles()

test_that("list_domains", {
  skip_on_cran()
  expect_error(svc$list_domains(), NA)
})

test_that("list_domains", {
  skip_on_cran()
  expect_error(svc$list_domains(MaxResults = 20), NA)
})

test_that("list_profile_object_type_templates", {
  skip_on_cran()
  expect_error(svc$list_profile_object_type_templates(), NA)
})

test_that("list_profile_object_type_templates", {
  skip_on_cran()
  expect_error(svc$list_profile_object_type_templates(MaxResults = 20), NA)
})

test_that("list_recommender_recipes", {
  skip_on_cran()
  expect_error(svc$list_recommender_recipes(), NA)
})

test_that("list_recommender_recipes", {
  skip_on_cran()
  expect_error(svc$list_recommender_recipes(MaxResults = 20), NA)
})
