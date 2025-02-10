args <- commandArgs(trailingOnly = TRUE)

library(make.paws)

root <- args[1]
in_dir <- args[2]

before <- c(
  "ﬁ",
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
  "http://docs.pythonboto.org"
)

after <- c(
  "fi",
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
  "https://docs.pythonboto.org"
)

paws_gsub(root = root, before = before, after = after)

paws_unescape_latex_post_build(root = root)
paws_fix_html_span(root = root)

paws_unescape_latex_post_build(root = root)
paws_pkg_doc_build(in_dir = in_dir)
paws_rd_links(in_dir = in_dir)
