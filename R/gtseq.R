#' function that takes a dataframe, with sequences in one column, and creates a
#' gt table
#' 
#' - splits the seq column into 1 per element
#' - applies a color palette to amino acids
#' 
#' @param df a data frame
#' @param names_prefix the prefix to add to each position column
#' @param seq_column the column that contains biological sequences
#' @return a gt table object
#' @export
#' @inheritParams gt::gt
#' @examples
#'
#' msa |> gtseq(seq_column = seq)
gtseq <- function(
    df,
    seq_column,
    names_prefix = "pos_",
    # gt() arguments
    rowname_col = NULL,
    groupname_col = dplyr::group_vars(df),
    process_md = FALSE,
    caption = NULL,
    rownames_to_stub = FALSE,
    row_group_as_column = FALSE,
    auto_align = TRUE,
    id = NULL,
    locale = getOption("gt.locale"),
    row_group.sep = getOption("gt.row_group.sep", " - ")) {
  tbl_data <- df |> split_sequences(seq_column = {{ seq_column }}, names_prefix = names_prefix)
  breaks <- generate_breaks(stringr::str_subset(colnames(tbl_data), names_prefix))
  tbl_data |>
    gt::gt(
      rowname_col = rowname_col,
      groupname_col = groupname_col,
      process_md = process_md,
      caption = caption,
      rownames_to_stub = rownames_to_stub,
      row_group_as_column = row_group_as_column,
      auto_align = auto_align,
      id = id,
      locale = locale,
      row_group.sep = row_group.sep
    ) |>
    # add consensus sequence
    gt::grand_summary_rows(
      columns = dplyr::contains(names_prefix),
      fns = list(
        Consensus ~ get_consensus_return_bar(.) |>
          htmltools::div(style = "width:100%;height:50px;") |>
          as.character(),
        Sequence ~ names(get_consensus(.)) |>
          # change to double dash, otherwise fmt_markdown turns it into a list (ul)
          stringr::str_replace("-", "--")
      ),
      fmt = list(
        bar ~ gt::fmt_markdown(.)
      ),
      missing = ""
    ) |>
    # style the sequence elements: center elements, adjust size
    gt::tab_style(
      style = gt::cell_text(
        size = "small",
        align = "center",
        indent = 0
      ),
      locations = list(gt::cells_body(columns = dplyr::contains(names_prefix)), gt::cells_grand_summary(columns = contains(names_prefix)))
    ) |>
    
    # breaks
    gt::cols_label_with(
      fn = ~ ifelse(. %in% breaks, ., "") |> stringr::str_remove(names_prefix),
      columns = dplyr::contains(names_prefix)
    ) |>
    # remove borders from the table body
    gt::tab_style(
      style = list(
        gt::cell_borders(
          sides = "all",
          weight = gt::px(0)
        )
      ),
      locations = list(
        gt::cells_body()
      )
    ) |>
    # borders, style
    gt::tab_options(

      # adjust padding in the cell body
      data_row.padding.horizontal = gt::px(2),
      data_row.padding = gt::px(2),

      # adjust padding in the grand summary
      # Noting that padding creates space between the bars (which have 100% width)
      grand_summary_row.padding.horizontal = gt::px(0),
      grand_summary_row.padding = gt::px(2),

      #  remove borders
      grand_summary_row.border.width = gt::px(2)
    ) |> 
  
  # palette
    gt::data_color(columns = dplyr::contains(names_prefix), fn = apply_color_to_aa('Chemistry') )
}
