svc <- paws::customerprofiles()

test_that("list_domains", {
  expect_error(svc$list_domains(), NA)
})

test_that("list_domains", {
  expect_error(svc$list_domains(MaxResults = 20), NA)
})

test_that("list_profile_object_type_templates", {
  expect_error(svc$list_profile_object_type_templates(), NA)
})

test_that("list_profile_object_type_templates", {
  expect_error(svc$list_profile_object_type_templates(MaxResults = 20), NA)
})

test_that("list_recommender_recipes", {
  expect_error(svc$list_recommender_recipes(), NA)
})

test_that("list_recommender_recipes", {
  expect_error(svc$list_recommender_recipes(MaxResults = 20), NA)
})
