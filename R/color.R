#' Coloring function that applies a gtseq palette
#'
#' @param palette name of the palette
#' @param letter string input
#'
#' @return a coloring function based on chosen palette
#' @export
#' @examples
#'
#' apply_color_to_aa("Chemistry")(c("A", "K", "L", "-"))
#'
apply_color_to_aa <- function(
    palette = c(
      "Chemistry",
      "Shapely",
      "Zappo",
      "Taylor",
      "LETTER",
      "Hydrophobicity"
    )) {
  target_palette <- palette_aa[, c("symbol", palette[1])] |> tibble::deframe()

  color_fn <- function(letter) {
    color <- target_palette[letter]
    color[is.na(color)] <- "grey"
    return(color)
  }
}
