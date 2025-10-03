#' takes a vector as input, generates breaks every n times
#'
#' Give the table's position columns, treat as a numerical axis, and generates breaks using `scales::breaks_width`
#' @param x a vector of column names
#' @return a vector of column names at every `width` position
#' @export
#' @examples
#'
#' library(dplyr)
#' cnames <- msa |>
#'   split_sequences(seq_column = seq) |>
#'   select(contains("pos_")) |>
#'   colnames()
#' generate_breaks(cnames)
generate_breaks <- function(cnames, width = 5) {
  n_col <- cnames |> length()

  browser()
  breaks <- scales::breaks_width(width, 0)(c(1, n_col))

  # handle case where breaks extend beyond data
  breaks <- intersect(breaks, 1:n_col)

  col_breaks <- colnames(cnames[breaks])
  return(col_breaks)
}
