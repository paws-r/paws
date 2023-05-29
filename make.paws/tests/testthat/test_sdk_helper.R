test_that("check list paws packages", {
  tmp_dir <- tempdir()
  dir_list <- c("paws", "paws.cat1", "paws.cat2", "fake")
  sapply(file.path(tmp_dir, dir_list), dir.create, showWarnings = F)

  expect_equal(
    list_paws_pkgs(tmp_dir),
    file.path(tmp_dir, c("paws", "paws.cat1", "paws.cat2"))
  )
  fs::dir_delete(file.path(tmp_dir, dir_list))
})

test_that("check list paws packages restrict package", {
  tmp_dir <- tempdir()
  dir_list <- c("paws", "paws.cat1", "paws.cat2", "fake")
  sapply(file.path(tmp_dir, dir_list), dir.create, showWarnings = F)

  expect_equal(
    list_paws_pkgs(tmp_dir, "paws.cat1"),
    file.path(tmp_dir, "paws.cat1")
  )
  fs::dir_delete(file.path(tmp_dir, dir_list))
})

test_that("check list paws category packages", {
  tmp_dir <- tempdir()
  dir_list <- c("paws", "paws.cat1", "paws.cat1.p1", "paws.cat2", "fake")
  sapply(file.path(tmp_dir, dir_list), dir.create, showWarnings = F)

  pkgs_list <- list_paws_pkgs(tmp_dir)

  expect_equal(
    list_cat_pkgs(pkgs_list),
    file.path(tmp_dir, c("paws.cat1", "paws.cat2"))
  )
  fs::dir_delete(file.path(tmp_dir, dir_list))
})

test_that("check list paws sub category packages", {
  tmp_dir <- tempdir()
  dir_list <- c("paws", "paws.cat1", "paws.cat1.p1", "paws.cat1.p2", "fake")
  sapply(file.path(tmp_dir, dir_list), dir.create, showWarnings = F)

  pkgs_list <- list_paws_pkgs(tmp_dir)

  expect_equal(
    list_sub_cat_pkgs(pkgs_list),
    file.path(tmp_dir, c("paws.cat1.p1", "paws.cat1.p2"))
  )
  fs::dir_delete(file.path(tmp_dir, dir_list))
})

test_that("check local check_pkgs remove notes", {
  mock_devtools_check_built <- mock2(
    list(errors = "foo", warnings = "bar"),
    list(errors = "foo", warnings = "bar", notes = "cho"),
    list(notes = "baz"),
    cycle = T
  )
  mockery::stub(check_pkgs, 'devtools::check_built', mock_devtools_check_built)

  check <- check_pkgs(c("paws", "paws.cat1", "paws.cat2"))

  expect_equal(check, list(
    paws = list(errors="foo", warnings="bar"),
    paws.cat1 = list(errors="foo", warnings="bar")
  ))
})

test_that("check local check_pkgs keep notes", {
  mock_devtools_check_built <- mock2(
    list(errors = "foo", warnings = "bar"),
    list(errors = "foo", warnings = "bar", notes = "cho"),
    list(notes = "baz"),
    cycle = T
  )
  mockery::stub(check_pkgs, 'devtools::check_built', mock_devtools_check_built)

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
  sapply(file.path(tmp_dir, dir_list), dir.create, showWarnings = F)

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
  sapply(file.path(tmp_dir, dir_list), dir.create, showWarnings = F)

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
  sapply(file.path(tmp_dir, dir_list), dir.create, showWarnings = F)

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
  sapply(file.path(tmp_dir, dir_list), dir.create, showWarnings = F)

  mock_url_check <- mock2(
    "foo",
    "bar",
    "cho",
    cycle = T
  )
  mockery::stub(paws_check_url, 'urlchecker::url_check', mock_url_check)

  check <- paws_check_url(tmp_dir)
  expect_equal(
    sapply(mockery::mock_args(mock_url_check), function(x) x[[1]]),
    file.path(tmp_dir, dir_list)
  )
  fs::dir_delete(file.path(tmp_dir, dir_list))
})

test_that("check paws_check_rhub_sub_cat", {
  tmp_dir <- tempdir()
  dir_list <- c("paws", "paws.cat1", "paws.cat1.p1", "paws.cat1.p2", "fake")
  sapply(file.path(tmp_dir, dir_list), dir.create, showWarnings = F)

  mock_check_rhub <- mock2()
  mockery::stub(paws_check_rhub_sub_cat, 'devtools::check_rhub', mock_check_rhub)

  check <- paws_check_rhub_sub_cat(tmp_dir)

  expect_equal(
    sapply(mockery::mock_args(mock_check_rhub), function(x) x[[1]]),
    file.path(tmp_dir, c("paws.cat1.p1", "paws.cat1.p2"))
  )
  fs::dir_delete(file.path(tmp_dir, dir_list))
})

test_that("check paws_check_rhub_cat", {
  tmp_dir <- tempdir()
  dir_list <- c("paws", "paws.cat1", "paws.cat1.p1", "paws.cat1.p2", "fake")
  sapply(file.path(tmp_dir, dir_list), dir.create, showWarnings = F)

  mock_check_rhub <- mock2()
  mockery::stub(paws_check_rhub_cat, 'devtools::check_rhub', mock_check_rhub)

  check <- paws_check_rhub_cat(tmp_dir)

  expect_equal(
    sapply(mockery::mock_args(mock_check_rhub), function(x) x[[1]]),
    file.path(tmp_dir, c("paws.cat1"))
  )
  fs::dir_delete(file.path(tmp_dir, dir_list))
})

test_that("check paws_check_win_devel_sub_cat", {
  tmp_dir <- tempdir()
  dir_list <- c("paws", "paws.cat1", "paws.cat1.p1", "paws.cat1.p2", "fake")
  sapply(file.path(tmp_dir, dir_list), dir.create, showWarnings = F)

  mock_check_rhub <- mock2()
  mockery::stub(paws_check_win_devel_sub_cat, 'devtools::check_win_devel', mock_check_rhub)

  check <- paws_check_win_devel_sub_cat(tmp_dir)

  expect_equal(
    sapply(mockery::mock_args(mock_check_rhub), function(x) x[[1]]),
    file.path(tmp_dir, c("paws.cat1.p1", "paws.cat1.p2"))
  )
  fs::dir_delete(file.path(tmp_dir, dir_list))
})

test_that("check paws_check_win_devel_cat", {
  tmp_dir <- tempdir()
  dir_list <- c("paws", "paws.cat1", "paws.cat1.p1", "paws.cat1.p2", "fake")
  sapply(file.path(tmp_dir, dir_list), dir.create, showWarnings = F)

  mock_check_rhub <- mock2()
  mockery::stub(paws_check_win_devel_cat, 'devtools::check_win_devel', mock_check_rhub)

  check <- paws_check_win_devel_cat(tmp_dir)

  expect_equal(
    sapply(mockery::mock_args(mock_check_rhub), function(x) x[[1]]),
    file.path(tmp_dir, c("paws.cat1"))
  )
  fs::dir_delete(file.path(tmp_dir, dir_list))
})

test_that("check paws_release_sub_cat", {
  tmp_dir <- tempdir()
  dir_list <- c("paws", "paws.cat1", "paws.cat1.p1", "paws.cat1.p2", "fake")
  sapply(file.path(tmp_dir, dir_list), dir.create, showWarnings = F)

  mock_release <- mock2()
  mockery::stub(paws_release_sub_cat, 'devtools::submit_cran', mock_release)

  check <- paws_release_sub_cat(tmp_dir)

  expect_equal(
    sapply(mockery::mock_args(mock_release), function(x) x[[1]]),
    file.path(tmp_dir, c("paws.cat1.p1", "paws.cat1.p2"))
  )
  fs::dir_delete(file.path(tmp_dir, dir_list))
})

test_that("check paws_release_cat", {
  tmp_dir <- tempdir()
  dir_list <- c("paws", "paws.cat1", "paws.cat1.p1", "paws.cat1.p2", "fake")
  sapply(file.path(tmp_dir, dir_list), dir.create, showWarnings = F)

  mock_release <- mock2()
  mockery::stub(paws_release_cat, 'devtools::submit_cran', mock_release)

  check <- paws_release_cat(tmp_dir)

  expect_equal(
    sapply(mockery::mock_args(mock_release), function(x) x[[1]]),
    file.path(tmp_dir, c("paws.cat1"))
  )
  fs::dir_delete(file.path(tmp_dir, dir_list))
})

test_that("check paws_install", {
  tmp_dir <- tempdir()
  dir_list <- c("paws", "paws.cat1", "paws.cat1.p1", "paws.cat1.p2", "fake")
  sapply(file.path(tmp_dir, dir_list), dir.create, showWarnings = F)

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
    lapply(mockery::mock_args(mock_install_local_pkg_list), function(x) x[[1]]),
    list(
      file.path(tmp_dir, c("paws.cat1.p1", "paws.cat1.p2")),
      file.path(tmp_dir, c("paws.cat1")),
      file.path(tmp_dir, c("paws"))
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

test_that("check paws_check_pkg_size", {
  mock_list_paws_pkgs <- mock2(c("paws", "paws.cat1", "paws.cat2"))
  mock_devtools_build <- mock2()
  mock_dir_info <- mock2(
    data.table(
      "size" = fs::as_fs_bytes(c("1MB", "4MB", "6MB")),
      "path" = paste0(c("paws", "paws.cat1", "paws.cat2"), "_123.tar.gz")
    )
  )
  mockery::stub(paws_check_pkg_size, 'list_paws_pkgs', mock_list_paws_pkgs)
  mockery::stub(paws_check_pkg_size, 'devtools::build', mock_devtools_build)
  mockery::stub(paws_check_pkg_size, 'fs::dir_info', mock_dir_info)

  dir_info <- paws_check_pkg_size()

  expect_equal(
    dir_info,
    data.table(
      package = c("paws.cat2", "paws.cat1", "paws"),
      size = fs::as_fs_bytes(c("6MB", "4MB", "1MB")),
      status = c("ERROR", "WARNING", "OK"),
      percentage = c("120 %", "80 %", "20 %")
    )
  )
})

test_that("check paws_build_cran_comments", {
  mock_desc_get_deps <- mock2(
    data.frame(
      "type" = rep("Imports", 2),
      "package" = c("paws.cat1", "paws.cat2")
    )
  )
  mock_list_paws_pkgs <- mock2(c("paws.cat1", "paws.cat2"))
  mock_paws_check_pkg_size <- mock2(
    data.table::data.table(
      package = c("paws", "paws.cat1", "paws.cat2"),
      size = c("123K", "456K", "789K"),
      status = rep("OK", 3),
      percentage = paste(seq(3, 10, 3), "%")
    )
  )
  mock_paws_check_local <- mock2(
    list(
      paws = list(
        errors = NULL,
        warnings = NULL,
        notes = NULL
      ),
      paws.cat1 = list(
        errors = NULL,
        warnings = "this is a dummy warning",
        notes = NULL
      ),
      paws.cat2 = list(
        errors = NULL,
        warnings = NULL,
        notes = "this is a dummy note"
      )
    )
  )
  mock_write_line <- mock2()
  mockery::stub(
    paws_build_cran_comments, 'list_paws_pkgs', mock_list_paws_pkgs
  )
  mockery::stub(
    paws_build_cran_comments, 'paws_check_pkg_size', mock_paws_check_pkg_size
  )
  mockery::stub(
    paws_build_cran_comments, 'paws_check_local', mock_paws_check_local
  )
  mockery::stub(
    paws_build_cran_comments, 'writeLines', mock_write_line
  )

  paws_build_cran_comments(in_dir = "made_up")

  expect_equal(
    mock_arg(mock_paws_check_pkg_size),
    list(
      "made_up",
      "pkg_list" = c("paws.cat1", "paws.cat2")
    )
  )
  expect_equal(
    mock_arg(mock_paws_check_local),
    list(
      pkg_list = c("paws.cat1", "paws.cat2"),
      keep_notes = TRUE
    )
  )
  expect_equal(
    mockery::mock_args(mock_write_line),
    list(
      list(
        "## Test environments\n\n* local macOS install, R 4.2.1\n* R-hub (devel and release)\n* win-builder\n\n## R CMD check results\n\nThere were no ERRORs or Notes.\nWarnings:this is a dummy warning\n\nMaintainer Notes: tarball package size: 456K\n\n## Downstream dependencies\n\nAll downstream dependencies ('paws') pass R CMD check.",
        con = "made_up/paws.cat1/cran-comments.md"
      ),
      list(
        "## Test environments\n\n* local macOS install, R 4.2.1\n* R-hub (devel and release)\n* win-builder\n\n## R CMD check results\n\nThere were no ERRORs, or WARNINGs.\nNotes:\nthis is a dummy note\n\nMaintainer Notes: tarball package size: 789K\n\n## Downstream dependencies\n\nAll downstream dependencies ('paws') pass R CMD check.",
        con = "made_up/paws.cat2/cran-comments.md"
      )
    )
  )
})

test_that("check paws_build_cran_comments from cache", {
  mock_desc_get_deps <- mock2(
    data.frame(
      "type" = rep("Imports", 2),
      "package" = c("paws.cat1", "paws.cat2")
    )
  )
  mock_list_paws_pkgs <- mock2(c("paws.cat1", "paws.cat2"))
  mock_paws_check_pkg_size <- mock2(
    data.table::data.table(
      package = c("paws", "paws.cat1", "paws.cat2"),
      size = c("123K", "456K", "789K"),
      status = rep("OK", 3),
      percentage = paste(seq(3, 10, 3), "%")
    )
  )
  mock_write_line <- mock2()
  mockery::stub(
    paws_build_cran_comments, 'desc::desc_get_deps', mock_desc_get_deps
  )
  mockery::stub(
    paws_build_cran_comments, 'list_paws_pkgs', mock_list_paws_pkgs
  )
  mockery::stub(
    paws_build_cran_comments, 'paws_check_pkg_size', mock_paws_check_pkg_size
  )
  mockery::stub(
    paws_build_cran_comments, 'writeLines', mock_write_line
  )

  paws_build_cran_comments(
    in_dir = "made_up", cache_path = "local_check_results.yml"
  )

  expect_equal(
    mock_arg(mock_paws_check_pkg_size),
    list(
      "made_up",
      "pkg_list" = c("paws.cat1", "paws.cat2")
    )
  )
  expect_equal(
    mockery::mock_args(mock_write_line),
    list(
      list(
        "## Test environments\n\n* local macOS install, R 4.2.1\n* R-hub (devel and release)\n* win-builder\n\n## R CMD check results\n\nThere were no ERRORs or Notes.\nWarnings:this is a dummy warning\n\nMaintainer Notes: tarball package size: 456K\n\n## Downstream dependencies\n\nAll downstream dependencies ('paws') pass R CMD check.",
        con = "made_up/paws.cat1/cran-comments.md"
      ),
      list(
        "## Test environments\n\n* local macOS install, R 4.2.1\n* R-hub (devel and release)\n* win-builder\n\n## R CMD check results\n\nThere were no ERRORs, or WARNINGs.\nNotes:\nthis is a dummy note\n\nMaintainer Notes: tarball package size: 789K\n\n## Downstream dependencies\n\nAll downstream dependencies ('paws') pass R CMD check.",
        con = "made_up/paws.cat2/cran-comments.md"
      )
    )
  )
})

test_that("check if version is updated correctly", {
  mock_writelines <- mock2()
  mockery::stub(
    paws_update_version, 'writeLines', mock_writelines
  )
  paws_update_version(dir = "dummy", version = "0.8.0")

  expected <- lapply(file.path(fs::dir_ls("dummy"), "expected_DESCRIPTION"), readLines)
  actual <- mockery::mock_args(mock_writelines)
  for (i in seq_along(actual)) {
    expect_equal(actual[[i]][[1]], expected[[i]])
  }
})
