## code to prepare `palette_aa` dataset goes here
palette_aa <- readr::read_csv(here::here("inst", "extdata", "palette_aa.csv"))

usethis::use_data(palette_aa, overwrite = TRUE)
