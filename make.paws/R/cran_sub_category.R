# Make the categories from collection of sub-categories
 make_category_collection <- function(sdk_dir, out_dir, categories, package, service_names) {
   version <- get_version(sdk_dir)
   package <- sprintf("paws.%s", package)
   package_dir <- file.path(out_dir, package)
   write_skeleton_category(package_dir)
   write_description_category(
     package_dir,
     package,
     title = unique(unlist(sapply(categories, function(cat) cat$title))),
     description = paste0(
       lapply(categories, function(cat) cat$category_description), collapse = ""
     ),
     version = version,
     imports = c()
   )
   # Create packages that contain services
   active <- vapply(categories, function(cat) {
     !is.null(cat$services)
     }, FUN.VALUE = logical(1)
   )
   categories <- categories[active]
   write_source_collection(sdk_dir, package_dir, categories, service_names)
   write_documentation(package_dir)
   write_imports_collection(package_dir, version, get_category_packages(categories))
 }

 # Identify sub-categories
 find_sub_categories <- function(categories){
   return(vapply(categories, function(cat) {
       !is.null(cat$category_description)
     }, logical(1))
   )
 }

 # Group sub-categories
 group_categories <- function(categories){
   grp <- sapply(categories, function(cat) {
     gsub(".p[0-9]+$", "", cat$name)
   })
   return(split(categories, grp))
 }

 make_category_from_sub_category <- function(categories){
   found <- find_sub_categories(categories)
   sub_categories <- categories[found]
   grp_sub_cats <- group_categories(sub_categories)
   cats <- names(grp_sub_cats)
   # Build each categories metadata from sub-categories
   cat_meta <- setNames(vector(mode = "list", length = length(cats)), cats)
   for (cat in cats){
     cat_meta[[cat]]$name <- cat
     cat_meta[[cat]]$services <- unlist(sapply(
       grp_sub_cats[[cat]], function(sub_cat) sub_cat$services
     ))
     cat_meta[[cat]]$title <- unique(unlist(sapply(
       grp_sub_cats[[cat]], function(sub_cat) sub_cat$title
     )))
     cat_meta[[cat]]$description <- paste0(
       lapply(grp_sub_cats[[cat]], function(sub_cat) {
         sub_cat$category_description
       }), collapse = ""
     )
   }
   return(c(categories[!found], unname(cat_meta)))
 }
