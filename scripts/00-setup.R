# Packages ----------------------------------------------------------------
install.packages(c("tidyverse", "quarto", "rmarkdown"))
install.packages("reschola", repos = "https://scholaempirica.r-universe.dev")

##if reschola complains about missing dependencies, run the following:
# install.packages("remotes")
# remotes::install_github(
#   "scholaempirica/reschola",
#   ref = remotes::github_release(),
#   build_vignettes = TRUE)

# Data Download -----------------------------------------------------------
# You don't need to run this, data are already included in the repository.
# reschola::ls_login(api_url =  "https://dotazniky.ff.cuni.cz/limesurvey/index.php/admin/remotecontrol")
# ls283491 <- reschola::ls_responses(survey_id = "283491")
# dir.create("data-raw")
# readr::write_csv(ls283491, file = "data-raw/highschoolers.csv")
# readr::write_rds(ls283491, file = "data-raw/highschoolers.rds")
