# Packages ----------------------------------------------------------------
install.packages(c("tidyverse", "quarto"))
install.packages("reschola", repos = "https://scholaempirica.r-universe.dev")

# Data Download -----------------------------------------------------------
# Only if you have access to dotazniky.ff.cuni.cz
# reschola::ls_login(api_url =  "https://dotazniky.ff.cuni.cz/limesurvey/index.php/admin/remotecontrol")
# ls283491 <- reschola::ls_responses(survey_id = "283491")
# dir.create("data-raw")
# readr::write_csv(ls283491, file = "data-raw/highschoolers.csv")
# readr::write_rds(ls283491, file = "data-raw/highschoolers.rds")
