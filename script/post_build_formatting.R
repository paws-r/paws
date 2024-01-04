args <- commandArgs(trailingOnly = TRUE)

library(make.paws)

root <- args[1]
in_dir <- args[2]

before <- c("\\\\\`U\\+0009`", "\\\\\`U\\+000A`", "\\\\\`U\\+000D`", "\\\\\`U\\+0020`", "\\\\\`U\\+00FF`")
after <- c("``U+0009``", "``U+000A``", "``U+000D``", "``U+0020``", "``U+00FF``")

for (i in seq_along(before)) {
  paws_gsub(root = root, before = before[i], after = after[i])
}

paws_unescape_latex_post_build(root = root)
paws_fix_html_span(root = root)
paws_pkg_doc_build(in_dir = in_dir)
