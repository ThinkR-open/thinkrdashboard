# Add Description file
# _Get all deps to run courses, except old ones -- SUGGESTS --
all_deps_courses <- attachment::att_from_rmds("thinkr_dashboard.Rmd")

supplements_imports <- c("git2r", "attachment", "testthat", "here", "flextable",
                         "remotes")

all_imports <- unique(c(supplements_imports, all_deps_courses))

# Add to DESCRIPTION
# usethis::use_description()
attachment::att_to_desc_from_is(
  imports = all_imports
)

# License
usethis::use_mit_license("ThinkR")

# Set Actions
usethis::use_github_action("render-rmarkdown")

# Readme
usethis::use_readme_rmd()

# Try render
rmarkdown::render("thinkr_dashboard.Rmd", output_dir = "public")
