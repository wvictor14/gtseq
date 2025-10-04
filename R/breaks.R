#' takes a vector as input, generates breaks every n times
#'
#' Give the table's position columns, treat as a numerical axis, and generates breaks using `scales::breaks_width`
#' @param x a vector of column names
#' @param width the distance between each break 
#' @return a vector of column names at every `width` position
#' @export
#' @examples
#'
#' library(dplyr)
#' cnames <- msa |> 
#'  split_sequences(seq_column = seq) |> 
#'  dplyr::select(dplyr::contains("pos_")) |> 
#'  colnames()
#' generate_breaks(cnames)
generate_breaks <- function(x, width = 5) {
  n_col <- x |> length()
  
  breaks <- scales::breaks_width(width, 0)(c(1, n_col))

  # handle case where breaks extend beyond data
  breaks <- intersect(breaks, 1:n_col)

  col_breaks <- x[breaks]
  return(col_breaks)
}
