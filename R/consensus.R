#' Create a simply html bar chart
#'
#' arent div is set to 100% width and height
#'
#' @param bar_height a number between 0 and 1 that sets the height of the bar as a percentage of the total height of the container (the parent) div
#' @param parent_div_height valid css unit for height of the parent div
#' @param parent_div_width valid css unit for width of the parent div
#' @export
#' @examples
#'
#' create_html_vertical_bar(0.5)
create_html_vertical_bar <- function(
    bar_height = .5,
    bar_color = "#4a6fa5",
    parent_div_height = "50px",
    parent_div_width = "100%") {
  .bar_height <- bar_height * 100
  htmltools::div(
    style = glue::glue("width:{parent_div_width};height:{parent_div_height};margin:0;padding:0;"),
    htmltools::div(style = glue::glue("height:{100-.bar_height}%;background:transparent;margin:0;padding:0;")),
    htmltools::div(style = glue::glue("height:{.bar_height}%;background:{bar_color};margin:0;padding:0;"))
  )
}

#' Get conensus frequency
#'
#' returns a 1-length named character vector of the most frequent amino acid, where:
#'  - the value is the frequency
#'  - the name is amino acid
#'
#' Does not handle ties (one of the ties will be returned)
#'
#' @param x a vector, ideally of interesting biological sequences
#' @export
#' @examples
#'
#' get_consensus(c("dog", "dog", "cat"))
#'
get_consensus <- function(x) {
  # drop gaps
  frequency_tbl <- x |>
    table() |>
    sort(decreasing = TRUE)
  consensus_freq <- (frequency_tbl / sum(frequency_tbl))[1]

  return(consensus_freq)
}

#' Create a bar chart based on consensu
#'
#' gets the consensus of the vector x, and returns an html bar
#'
#' @param x a vector
#' @return html div
#' @export
#' @examples
#'
#' get_consensus_return_bar(c("dog", "dog", "cat"))
get_consensus_return_bar <- function(x) {
  consensus_freq <- get_consensus(x)
  create_html_vertical_bar(consensus_freq)
}
