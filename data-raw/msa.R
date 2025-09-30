## code to prepare `msa` dataset goes here

# msa data
FILE_MSA <- here::here("inst", "extdata", "msa.csv")
msa <- readr::read_csv(FILE_MSA)


usethis::use_data(msa, overwrite = TRUE)
