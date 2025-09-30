#' Multiple sequence alignment data
#'
#' Taken from Figure 5 of Wang 2021 “A Conserved Immunogenic and Vulnerable Site on the Coronavirus Spike Protein Delineated by Cross-Reactive Monoclonal Antibodies.” Nature Communications 12 (1): 1715.
#'
#' @format ## `msa`
#' A tibble
#' \describe{
#'   \item{group}{Family of coronavirus}
#'   \item{name}{Name of strain}
#'   \item{start}{Start position of sequence}
#'   \item{seq}{sequences}
#'   ...
#' }
#' @source <https://doi.org/10.1038/s41467-021-21968-w>
"msa"


#' A series of color palettes for amino acid visualization
#'
#'
#' @format ## `palette_aa`
#' A dtibble
#' \describe{
#'   \item{symbol}{Amino acid symbol}
#'   \item{other}{colors for each palette}
#'   ...
#' }
"palette_aa"
