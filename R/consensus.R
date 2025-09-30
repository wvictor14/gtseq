#' This version sets the parent div to be 100% width and height
#' @param bar_height a number between 0 and 1 that sets the height of the bar as a percentage of the total height of the container (the parent) div
#' @param parent_div_height valid css unit for height of the parent div
#' @param parent_div_width valid css unit for width of the parent div
create_html_vertical_bar <- function(
    bar_height = .5,
    bar_color = "#4a6fa5",
    parent_div_height = "50px",
    parent_div_width = "100%") {
  .bar_height <- bar_height * 100
  div(
    style = glue("width:{parent_div_width};height:{parent_div_height};margin:0;padding:0;"),
    div(style = glue("height:{100-.bar_height}%;background:transparent;margin:0;padding:0;")),
    div(style = glue("height:{.bar_height}%;background:{bar_color};margin:0;padding:0;"))
  )
}

#' Get conensus frequency
#'
#' returns a 1-length named character vector of the most frequent amino acid, where:
#'  - the value is the frequency
#'  - the name is amino acid
#'
#' Does not handle ties (one of the ties will be returned)
#' @param x a vector, ideally of interesting biological sequences
get_consensus <- function(x) {
  # drop gaps
  frequency_tbl <- x |>
    table() |>
    sort(decreasing = TRUE)
  consensus_freq <- (frequency_tbl / sum(frequency_tbl))[1]

  return(consensus_freq)
}

#' gets the consensus of the vector x, and returns an html bar
get_consensus_return_bar <- function(x) {
  consensus_freq <- get_consensus(x)
  create_html_vertical_bar(consensus_freq)
}
