test_that("check list paws packages", {
  tmp_dir <- tempdir()
  dir_list <- c("paws", "paws.cat1", "paws.cat2", "fake")
  sapply(file.path(tmp_dir, dir_list), dir.create)

  expect_equal(
    basename(list_paws_pkgs(tmp_dir)),
    c("paws", "paws.cat1", "paws.cat2")
  )
  fs::dir_delete(file.path(tmp_dir, dir_list))
})

test_that("check list paws packages restrict package", {
  tmp_dir <- tempdir()
  dir_list <- c("paws", "paws.cat1", "paws.cat2", "fake")
  sapply(file.path(tmp_dir, dir_list), dir.create)

  expect_equal(
    basename(list_paws_pkgs(tmp_dir, "paws.cat1")),
    "paws.cat1"
  )
  fs::dir_delete(file.path(tmp_dir, dir_list))
})

test_that("check list paws category packages", {
  tmp_dir <- tempdir()
  dir_list <- c("paws", "paws.cat1", "paws.cat2", "fake")
  sapply(file.path(tmp_dir, dir_list), dir.create)

  pkgs_list <- list_paws_pkgs(tmp_dir)

  expect_equal(
    basename(list_cat_pkgs(pkgs_list)),
    c("paws.cat1", "paws.cat2")
  )
  fs::dir_delete(file.path(tmp_dir, dir_list))
})

test_that("check list paws sub category packages", {
  tmp_dir <- tempdir()
  dir_list <- c("paws", "paws.cat1", "paws.cat1.p1", "paws.cat1.p2", "fake")
  sapply(file.path(tmp_dir, dir_list), dir.create)

  pkgs_list <- list_paws_pkgs(tmp_dir)

  expect_equal(
    basename(list_sub_cat_pkgs(pkgs_list)),
    c("paws.cat1.p1", "paws.cat1.p2")
  )
  fs::dir_delete(file.path(tmp_dir, dir_list))
})

test_that("check local check_pkgs", {
  mock_devtools_check <- mock2(
    list(errors = "foo", warnings = "bar"),
    list(errors = "foo", warnings = "bar", notes = "cho"),
    list(notes = "baz"),
    cycle = T
  )
  mockery::stub(check_pkgs, 'devtools::check', mock_devtools_check)

  check <- check_pkgs(c("paws", "paws.cat1", "paws.cat2"))

  expect_equal(check, list(
    paws = list(errors="foo", warnings="bar"),
    paws.cat1 = list(errors="foo", warnings="bar")
  ))
})

test_that("check local check_pkgs keep notes", {
  mock_devtools_check <- mock2(
    list(errors = "foo", warnings = "bar"),
    list(errors = "foo", warnings = "bar", notes = "cho"),
    list(notes = "baz"),
    cycle = T
  )
  mockery::stub(check_pkgs, 'devtools::check', mock_devtools_check)

  check <- check_pkgs(c("paws", "paws.cat1", "paws.cat2"), keep_notes = T)

  expect_equal(check, list(
    paws = list(errors="foo", warnings="bar"),
    paws.cat1 = list(errors="foo", warnings="bar", notes = "cho"),
    paws.cat2 = list(errors=NULL, warnings=NULL, notes="baz")
  ))
})

test_that("check paws_check_local_sub_cat", {
  tmp_dir <- tempdir()
  dir_list <- c("paws", "paws.cat1", "paws.cat1.p1", "paws.cat1.p2", "fake")
  sapply(file.path(tmp_dir, dir_list), dir.create)

  mock_check_pkgs <- mock2(list(paws = list(errors="foo", warnings="bar")))
  mockery::stub(paws_check_local_sub_cat, 'check_pkgs', mock_check_pkgs)

  check <- paws_check_local_sub_cat(tmp_dir)

  expect_equal(check, list(paws = list(errors="foo", warnings="bar")))
  expect_equal(mock_arg(mock_check_pkgs), list(
    file.path(tmp_dir, c("paws.cat1.p1", "paws.cat1.p2")),
    FALSE
  ))
  fs::dir_delete(file.path(tmp_dir, dir_list))
})

test_that("check paws_check_local_cat", {
  tmp_dir <- tempdir()
  dir_list <- c("paws", "paws.cat1", "paws.cat2", "fake")
  sapply(file.path(tmp_dir, dir_list), dir.create)

  mock_check_pkgs <- mock2(list(paws.cat1 = list(errors="foo", warnings="bar")))
  mockery::stub(paws_check_local_cat, 'check_pkgs', mock_check_pkgs)

  check <- paws_check_local_cat(tmp_dir)

  expect_equal(mock_arg(mock_check_pkgs), list(
    file.path(tmp_dir, c("paws.cat1", "paws.cat2")),
    FALSE
  ))
  expect_equal(check, list(paws.cat1 = list(errors="foo", warnings="bar")))
  fs::dir_delete(file.path(tmp_dir, dir_list))
})

test_that("check paws_check_local", {
  tmp_dir <- tempdir()
  dir_list <- c("paws", "paws.cat1", "paws.cat2", "paws.cat1.p1")
  sapply(file.path(tmp_dir, dir_list), dir.create)

  mock_paws_check_local_sub_cat <- mock2(list("paws.cat1" = list(errors="foo", warnings="bar")))
  mock_paws_check_local_cat <- mock2(list())
  mock_check_pkgs <- mock2(list())
  mockery::stub(paws_check_local, 'paws_check_local_sub_cat', mock_paws_check_local_sub_cat)
  mockery::stub(paws_check_local, 'paws_check_local_cat', mock_paws_check_local_cat)
  mockery::stub(paws_check_local, 'check_pkgs', mock_check_pkgs)

  check <- paws_check_local(tmp_dir)

  expect_equal(check, list(paws.cat1 = list(errors="foo", warnings="bar")))
  fs::dir_delete(file.path(tmp_dir, dir_list))
})

test_that("check paws_check_url", {
  tmp_dir <- tempdir()
  dir_list <- c("paws", "paws.cat1", "paws.cat2")
  sapply(file.path(tmp_dir, dir_list), dir.create)

  mock_url_check <- mock2(
    "foo",
    "bar",
    "cho",
    cycle = T
  )
  mockery::stub(paws_check_url, 'urlchecker::url_check', mock_url_check)

  check <- paws_check_url(tmp_dir)
  expect_equal(
    sapply(mockery::mock_args(mock_url_check), function(x) basename(x[[1]])),
    dir_list
  )
  fs::dir_delete(file.path(tmp_dir, dir_list))
})

test_that("check paws_check_rhub_sub_cat", {
  tmp_dir <- tempdir()
  dir_list <- c("paws", "paws.cat1", "paws.cat1.p1", "paws.cat1.p2", "fake")
  sapply(file.path(tmp_dir, dir_list), dir.create)

  mock_check_rhub <- mock2()
  mockery::stub(paws_check_rhub_sub_cat, 'devtools::check_rhub', mock_check_rhub)

  check <- paws_check_rhub_sub_cat(tmp_dir)

  expect_equal(
    sapply(mockery::mock_args(mock_check_rhub), function(x) basename(x[[1]])),
    c("paws.cat1.p1", "paws.cat1.p2")
  )
  fs::dir_delete(file.path(tmp_dir, dir_list))
})

test_that("check paws_check_rhub_cat", {
  tmp_dir <- tempdir()
  dir_list <- c("paws", "paws.cat1", "paws.cat1.p1", "paws.cat1.p2", "fake")
  sapply(file.path(tmp_dir, dir_list), dir.create)

  mock_check_rhub <- mock2()
  mockery::stub(paws_check_rhub_cat, 'devtools::check_rhub', mock_check_rhub)

  check <- paws_check_rhub_cat(tmp_dir)

  expect_equal(
    sapply(mockery::mock_args(mock_check_rhub), function(x) basename(x[[1]])),
    c("paws.cat1")
  )
  fs::dir_delete(file.path(tmp_dir, dir_list))
})

test_that("check paws_check_win_devel_sub_cat", {
  tmp_dir <- tempdir()
  dir_list <- c("paws", "paws.cat1", "paws.cat1.p1", "paws.cat1.p2", "fake")
  sapply(file.path(tmp_dir, dir_list), dir.create)

  mock_check_rhub <- mock2()
  mockery::stub(paws_check_win_devel_sub_cat, 'devtools::check_win_devel', mock_check_rhub)

  check <- paws_check_win_devel_sub_cat(tmp_dir)

  expect_equal(
    sapply(mockery::mock_args(mock_check_rhub), function(x) basename(x[[1]])),
    c("paws.cat1.p1", "paws.cat1.p2")
  )
  fs::dir_delete(file.path(tmp_dir, dir_list))
})

test_that("check paws_check_win_devel_cat", {
  tmp_dir <- tempdir()
  dir_list <- c("paws", "paws.cat1", "paws.cat1.p1", "paws.cat1.p2", "fake")
  sapply(file.path(tmp_dir, dir_list), dir.create)

  mock_check_rhub <- mock2()
  mockery::stub(paws_check_win_devel_cat, 'devtools::check_win_devel', mock_check_rhub)

  check <- paws_check_win_devel_cat(tmp_dir)

  expect_equal(
    sapply(mockery::mock_args(mock_check_rhub), function(x) basename(x[[1]])),
    c("paws.cat1")
  )
  fs::dir_delete(file.path(tmp_dir, dir_list))
})

test_that("check paws_release_sub_cat", {
  tmp_dir <- tempdir()
  dir_list <- c("paws", "paws.cat1", "paws.cat1.p1", "paws.cat1.p2", "fake")
  sapply(file.path(tmp_dir, dir_list), dir.create)

  mock_release <- mock2()
  mockery::stub(paws_release_sub_cat, 'devtools::release', mock_release)

  check <- paws_release_sub_cat(tmp_dir)

  expect_equal(
    sapply(mockery::mock_args(mock_release), function(x) basename(x[[1]])),
    c("paws.cat1.p1", "paws.cat1.p2")
  )
  fs::dir_delete(file.path(tmp_dir, dir_list))
})

test_that("check paws_release_cat", {
  tmp_dir <- tempdir()
  dir_list <- c("paws", "paws.cat1", "paws.cat1.p1", "paws.cat1.p2", "fake")
  sapply(file.path(tmp_dir, dir_list), dir.create)

  mock_release <- mock2()
  mockery::stub(paws_release_cat, 'devtools::release', mock_release)

  check <- paws_release_cat(tmp_dir)

  expect_equal(
    sapply(mockery::mock_args(mock_release), function(x) basename(x[[1]])),
    c("paws.cat1")
  )
  fs::dir_delete(file.path(tmp_dir, dir_list))
})

test_that("check paws_install", {
  tmp_dir <- tempdir()
  dir_list <- c("paws", "paws.cat1", "paws.cat1.p1", "paws.cat1.p2", "fake")
  sapply(file.path(tmp_dir, dir_list), dir.create)

  mock_install_local <- mock2()
  mock_install_local_pkg_list <- mock2()
  mockery::stub(paws_install, 'devtools::install_local', mock_install_local)
  mockery::stub(paws_install, 'install_local_pkg_list', mock_install_local_pkg_list)

  check <- paws_install(tmp_dir)

  expect_equal(
    mock_arg(mock_install_local),
    list(file.path(tmp_dir, "..", "paws.common"), force = TRUE)
  )
  expect_equal(
    lapply(mockery::mock_args(mock_install_local_pkg_list), function(x) basename(x[[1]])),
    list(
      c("paws.cat1.p1", "paws.cat1.p2"),
      c("paws.cat1"),
      c("paws")
    )
  )
  fs::dir_delete(file.path(tmp_dir, dir_list))
})

test_that("check paws_uninstall", {
  mock_installed_packages <- mock2(list(Package = c("paws", "paws.cat1", "paws.cat2")))
  mock_remove_packages <- mock2()
  mockery::stub(paws_uninstall, 'installed.packages', mock_installed_packages)
  mockery::stub(paws_uninstall, 'remove.packages', mock_remove_packages)

  paws_uninstall()

  expect_equal(
    mockery::mock_args(mock_remove_packages), list(
      list(c("paws.cat1", "paws.cat2")),
      list("paws")
    )
  )
})
