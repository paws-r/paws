test_that("describe_clusters", {
    expect_error(describe_clusters(), NA)
})

test_that("list_clusters", {
    expect_error(list_clusters(), NA)
})

test_that("list_container_instances", {
    expect_error(list_container_instances(), NA)
})

test_that("list_services", {
    expect_error(list_services(), NA)
})

test_that("list_task_definition_families", {
    expect_error(list_task_definition_families(), NA)
})

test_that("list_task_definitions", {
    expect_error(list_task_definitions(), NA)
})

test_that("list_tasks", {
    expect_error(list_tasks(), NA)
})
