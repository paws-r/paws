args <- commandArgs(trailingOnly = TRUE)
options(paws.log_level = 3)

library(make.paws)

root <- args[1]
in_dir <- args[2]

before <- c(
  "ﬁ",
  "μ",
  "\\\\\`U\\+0009`",
  "\\\\\`U\\+000A`",
  "\\\\\`U\\+000D`",
  "\\\\\`U\\+0020`",
  "\\\\\`U\\+00FF`",
  "#' The \"\\*\"",
  "#' formed \\*within\\*",
  "#' \\*arn:aws:iam:::role/\\*/ResourceName_\\?\\*",
  "#' \\*arn:aws:iam:::role/pathA/pathB/ResourceName_1\\*",
  "#' \\*arn:aws:iam:::role/pathA/ResourceName_1\\*",
  "\u2028",
  "http://docs.pythonboto.org",
  "\\*\\\\href\\{([^}]*)\\}\\{([^}]*)\\}(\\.?)\\*"
)

after <- c(
  "fi",
  "\\\\code\\{u\\}",
  "``U+0009``",
  "``U+000A``",
  "``U+000D``",
  "``U+0020``",
  "``U+00FF``",
  "#' The \"&#42;\"",
  "#' formed \\\\emph\\{within\\}",
  "#' \\\\emph\\{arn:aws:iam:::role/&#42;/ResourceName_\\?\\}",
  "#' \\\\emph\\{arn:aws:iam:::role/pathA/pathB/ResourceName_1\\}",
  "#' \\\\emph\\{arn:aws:iam:::role/pathA/ResourceName_1\\}",
  "",
  "https://docs.pythonboto.org",
  "\\\\emph{\\\\href{\\1}{\\2}}\\3"
)

# Format R + Rb files in cran + paws directory
paws_post_build_format(root = root, patterns_before = before, patterns_after = after)

# Rebuild documentation (this will re-read source files to generate docs)
paws_pkg_doc_build(in_dir = in_dir)
paws_rd_links(in_dir = in_dir)
