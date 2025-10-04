#' Prepares sequence data frame for gt visualization
#'
#' Splits the sequence column into 1 column per character
#'
#' @param df expects 1 row per sequence.
#' @param seq_column the column that contains sequence data
#' @param names_prefix a prefix to add to the resulting columns. Useful for column selection in downstream analysis with gt
#' @export
#' @examples
#'
#' msa |> split_sequences(seq_column = seq)
#' msa |> split_sequences(seq_column = seq, names_prefix = "seq_")
#'
split_sequences <- function(df, seq_column, names_prefix = "pos_") {
  df_long <- df |>
    dplyr::mutate("{{ seq_column }}" := as.character({{ seq_column }}) |> stringr::str_split("")) |>
    tidyr::unnest({{ seq_column }}) |>
    dplyr::mutate(.position = dplyr::row_number(), .by = name)

  # table data
  tbl_data <- df_long |>
    tidyr::pivot_wider(
      names_from = ".position",
      values_from = {{ seq_column }},
      names_prefix = names_prefix
    )
  tbl_data
}
