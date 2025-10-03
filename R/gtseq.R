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
      columns = contains(names_prefix),
      fns = list(
        Consensus ~ get_consensus_return_bar(.) |>
          div(style = "width:100%;height:50px;") |>
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
    ## style consensus sequence
    ### make sure that the consensus sequence elements are centered
    gt::tab_style(
      style = gt::cell_text(align = "center"),
      locations = gt::cells_grand_summary(columns = contains(names_prefix))
    ) |>
    gt::tab_style(
      style = gt::cell_borders(sides = "bottom", style = "hidden"),
      locations = list(gt::cells_grand_summary(rows = 1), gt::cells_stub_grand_summary(rows = 1))
    ) |>
    # style the sequence elements: center elements, adjust size
    gt::tab_style(
      style = gt::cell_text(
        size = "small",
        align = "center",
        indent = 0
      ),
      locations = list(gt::cells_body(columns = contains(names_prefix)), gt::cells_grand_summary(columns = contains(names_prefix)))
    ) |>
    gt::cols_width(
      1 ~ px(60),
      name ~ px(50),
      start ~ px(40),
      everything() ~ px(13)
    ) |>
    gt::cols_align("right", group:start) |>
    # breaks
    gt::cols_label_with(
      fn = ~ ifelse(. %in% breaks, ., "") |> stringr::str_remove(names_prefix),
      columns = contains(names_prefix)
    ) |>
    # remove borders from the table body
    gt::tab_style(
      style = list(
        gt::cell_borders(
          sides = "all",
          weight = px(0)
        )
      ),
      locations = list(
        gt::cells_body()
      )
    ) |>
    # borders, style
    gt::tab_options(

      # adjust padding in the cell body
      data_row.padding.horizontal = px(2),
      data_row.padding = px(2),

      # adjust padding in the grand summary
      # Noting that padding creates space between the bars (which have 100% width)
      grand_summary_row.padding.horizontal = px(0),
      grand_summary_row.padding = px(2),

      # # remove borders
      table.border.top.style = "hidden",
      grand_summary_row.border.width = px(2)
    )
}
