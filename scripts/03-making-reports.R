# Packages and data -------------------------------------------------------
library(tidyverse)
library(quarto)

highschoolers <- read_rds("data-raw/highschoolers.rds")

# Creating reports --------------------------------------------------------
## 1) Extract school names (Here only 5 schools with the most answers)
school_names <- highschoolers |> 
  count(Q12) |> 
  filter(!is.na(Q12)) |> 
  slice_max(n, n = 5) |>
  pull(Q12)

## 2) Prepare names for the reports 
output_documents <- paste0("report ",str_replace(school_names, "^(.+)/(.+)$", "\\1"), ".docx")

##3) Run the loop
map2(.x = school_names,
     .y = output_documents,
    .f = ~quarto::quarto_render(input = "scripts/02-example-highschoolers.qmd",
                                output_file = .y,
                                execute_params = list(selected_school = .x)))

##4) Copy reports to prefered folder and delete the originals
old_location <- list.files(pattern = "report ")
new_location <- paste0("output/", old_location) 

file.copy(from = old_location,
          to = new_location)
file.remove(old_location)
