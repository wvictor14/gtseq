
# gtseq

<!-- badges: start -->

[![R-CMD-check](https://github.com/wvictor14/gtseq/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/wvictor14/gtseq/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of `gtseq` is to provide smalle modular functions that help
visualize biological sequences with `gt`.

This R package was developed as part of the 2025 posit table contest.
See my
[submission](https://github.com/rich-iannone/table-contest/discussions/10)
for details.

Traditionally, analysis of related biological sequences through multiple
sequence alignment (MSA) is done through standalone software programs
like [Jalview](https://www.jalview.org/),
[Rasmol](https://www.openrasmol.org/), and many others, or online web
apps like [NCBI’s msa
viewer](https://www.ncbi.nlm.nih.gov/projects/msaviewer/). Recent
additions like [`ggmsa`](https://yulab-smu.top/ggmsa/), Bioconductor’s
[`msa`](https://www.bioconductor.org/packages/release/bioc/html/msa.html),
among others, have brought visualization and analysis to the R
ecosystem. But sequences are not often visualized in table packages like
`gt`. This package facilitates bringing these traditional bioinformatic
activities to R and `gt`.

## Installation

You can install the development version of gtseq from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("wvictor14/gtseq")
```

## Example

gtseq provides several functions to help create `gt` tables of
biological sequences. Although the philosophy is to provide small
modular functions to allow for high customizability, `gtseq::gtseq` is a
wrapper function provided to quickly and efficiently explore sequences.

Use `gtseq` on a `data.frame` with a column containing amino acid
sequences:

``` r
library(gtseq)

msa |> gtseq(seq_column = seq)
```

<div id="pexfxxocfn" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#pexfxxocfn table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
&#10;#pexfxxocfn thead, #pexfxxocfn tbody, #pexfxxocfn tfoot, #pexfxxocfn tr, #pexfxxocfn td, #pexfxxocfn th {
  border-style: none;
}
&#10;#pexfxxocfn p {
  margin: 0;
  padding: 0;
}
&#10;#pexfxxocfn .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}
&#10;#pexfxxocfn .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}
&#10;#pexfxxocfn .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}
&#10;#pexfxxocfn .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}
&#10;#pexfxxocfn .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#pexfxxocfn .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#pexfxxocfn .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#pexfxxocfn .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}
&#10;#pexfxxocfn .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}
&#10;#pexfxxocfn .gt_column_spanner_outer:first-child {
  padding-left: 0;
}
&#10;#pexfxxocfn .gt_column_spanner_outer:last-child {
  padding-right: 0;
}
&#10;#pexfxxocfn .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}
&#10;#pexfxxocfn .gt_spanner_row {
  border-bottom-style: hidden;
}
&#10;#pexfxxocfn .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}
&#10;#pexfxxocfn .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}
&#10;#pexfxxocfn .gt_from_md > :first-child {
  margin-top: 0;
}
&#10;#pexfxxocfn .gt_from_md > :last-child {
  margin-bottom: 0;
}
&#10;#pexfxxocfn .gt_row {
  padding-top: 2px;
  padding-bottom: 2px;
  padding-left: 2px;
  padding-right: 2px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}
&#10;#pexfxxocfn .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 2px;
  padding-right: 2px;
}
&#10;#pexfxxocfn .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}
&#10;#pexfxxocfn .gt_row_group_first td {
  border-top-width: 2px;
}
&#10;#pexfxxocfn .gt_row_group_first th {
  border-top-width: 2px;
}
&#10;#pexfxxocfn .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#pexfxxocfn .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}
&#10;#pexfxxocfn .gt_first_summary_row.thick {
  border-top-width: 2px;
}
&#10;#pexfxxocfn .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#pexfxxocfn .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 2px;
  padding-bottom: 2px;
  padding-left: 0px;
  padding-right: 0px;
}
&#10;#pexfxxocfn .gt_first_grand_summary_row {
  padding-top: 2px;
  padding-bottom: 2px;
  padding-left: 0px;
  padding-right: 0px;
  border-top-style: double;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}
&#10;#pexfxxocfn .gt_last_grand_summary_row_top {
  padding-top: 2px;
  padding-bottom: 2px;
  padding-left: 0px;
  padding-right: 0px;
  border-bottom-style: double;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#pexfxxocfn .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}
&#10;#pexfxxocfn .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#pexfxxocfn .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#pexfxxocfn .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#pexfxxocfn .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#pexfxxocfn .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#pexfxxocfn .gt_left {
  text-align: left;
}
&#10;#pexfxxocfn .gt_center {
  text-align: center;
}
&#10;#pexfxxocfn .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}
&#10;#pexfxxocfn .gt_font_normal {
  font-weight: normal;
}
&#10;#pexfxxocfn .gt_font_bold {
  font-weight: bold;
}
&#10;#pexfxxocfn .gt_font_italic {
  font-style: italic;
}
&#10;#pexfxxocfn .gt_super {
  font-size: 65%;
}
&#10;#pexfxxocfn .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}
&#10;#pexfxxocfn .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}
&#10;#pexfxxocfn .gt_indent_1 {
  text-indent: 5px;
}
&#10;#pexfxxocfn .gt_indent_2 {
  text-indent: 10px;
}
&#10;#pexfxxocfn .gt_indent_3 {
  text-indent: 15px;
}
&#10;#pexfxxocfn .gt_indent_4 {
  text-indent: 20px;
}
&#10;#pexfxxocfn .gt_indent_5 {
  text-indent: 25px;
}
&#10;#pexfxxocfn .katex-display {
  display: inline-flex !important;
  margin-bottom: 0.75em !important;
}
&#10;#pexfxxocfn div.Reactable > div.rt-table > div.rt-thead > div.rt-tr.rt-tr-group-header > div.rt-th-group:after {
  height: 0px !important;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="a::stub"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="group">group</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="name">name</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="start">start</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_1"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_2"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_3"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_4"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_5">5</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_6"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_7"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_8"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_9"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_10">10</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_11"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_12"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_13"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_14"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_15">15</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_16"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_17"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_18"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_19"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_20">20</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_21"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_22"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_23"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_24"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_25">25</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_26"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_27"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_28"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_29"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_30">30</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_31"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_32"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_33"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_34"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_35">35</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_36"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_37"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_38"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_39"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_40">40</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_41"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_42"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_43"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_44"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_45">45</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_46"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_47"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_48"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_49"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_50">50</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_51"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_52"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_53"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_54"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_55">55</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_56"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_57"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_58"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_59"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_60">60</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_61"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_62"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_63"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_64"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_65">65</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_66"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_67"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_68"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_69"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_70">70</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_71"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_72"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_73"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_74"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_75">75</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_76"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_77"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_78"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_79"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_80">80</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_81"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_82"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_83"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_84"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_85">85</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_86"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_87"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_88"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_89"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_90">90</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_91"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_92"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_93"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_94"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_95">95</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><th id="stub_1_1" scope="row" class="gt_row gt_left gt_stub"></th>
<td headers="stub_1_1 group" class="gt_row gt_right" style="border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000;">beta</td>
<td headers="stub_1_1 name" class="gt_row gt_right" style="border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000;">OC43</td>
<td headers="stub_1_1 start" class="gt_row gt_right" style="border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000;">1225</td>
<td headers="stub_1_1 pos_1" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">T</td>
<td headers="stub_1_1 pos_2" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">S</td>
<td headers="stub_1_1 pos_3" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">I</td>
<td headers="stub_1_1 pos_4" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">P</td>
<td headers="stub_1_1 pos_5" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_1 pos_6" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_1 pos_7" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">P</td>
<td headers="stub_1_1 pos_8" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">D</td>
<td headers="stub_1_1 pos_9" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">F</td>
<td headers="stub_1_1 pos_10" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_1 pos_11" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_1 pos_12" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_1 pos_13" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_1 pos_14" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">D</td>
<td headers="stub_1_1 pos_15" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">Q</td>
<td headers="stub_1_1 pos_16" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">W</td>
<td headers="stub_1_1 pos_17" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">F</td>
<td headers="stub_1_1 pos_18" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_1 pos_19" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_1 pos_20" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">Q</td>
<td headers="stub_1_1 pos_21" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">T</td>
<td headers="stub_1_1 pos_22" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">S</td>
<td headers="stub_1_1 pos_23" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_1 pos_24" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">V</td>
<td headers="stub_1_1 pos_25" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">A</td>
<td headers="stub_1_1 pos_26" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">P</td>
<td headers="stub_1_1 pos_27" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">D</td>
<td headers="stub_1_1 pos_28" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_1 pos_29" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">S</td>
<td headers="stub_1_1 pos_30" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_1 pos_31" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">D</td>
<td headers="stub_1_1 pos_32" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_1 pos_33" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_1 pos_34" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_1 pos_35" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">I</td>
<td headers="stub_1_1 pos_36" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_1 pos_37" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">V</td>
<td headers="stub_1_1 pos_38" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">T</td>
<td headers="stub_1_1 pos_39" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">F</td>
<td headers="stub_1_1 pos_40" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_1 pos_41" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">D</td>
<td headers="stub_1_1 pos_42" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_1 pos_43" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">Q</td>
<td headers="stub_1_1 pos_44" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">V</td>
<td headers="stub_1_1 pos_45" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_1 pos_46" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_1 pos_47" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_1 pos_48" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_1 pos_49" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_1 pos_50" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_1 pos_51" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_1 pos_52" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_1 pos_53" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_1 pos_54" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_1 pos_55" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_1 pos_56" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_1 pos_57" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_1 pos_58" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_1 pos_59" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_1 pos_60" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">M</td>
<td headers="stub_1_1 pos_61" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_1 pos_62" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">R</td>
<td headers="stub_1_1 pos_63" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_1 pos_64" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">Q</td>
<td headers="stub_1_1 pos_65" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_1 pos_66" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">A</td>
<td headers="stub_1_1 pos_67" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">I</td>
<td headers="stub_1_1 pos_68" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_1 pos_69" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">V</td>
<td headers="stub_1_1 pos_70" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_1 pos_71" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_1 pos_72" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">Q</td>
<td headers="stub_1_1 pos_73" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">S</td>
<td headers="stub_1_1 pos_74" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_1 pos_75" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">I</td>
<td headers="stub_1_1 pos_76" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_1 pos_77" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_1 pos_78" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_1 pos_79" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">D</td>
<td headers="stub_1_1 pos_80" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">I</td>
<td headers="stub_1_1 pos_81" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">G</td>
<td headers="stub_1_1 pos_82" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">T</td>
<td headers="stub_1_1 pos_83" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_1 pos_84" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_1 pos_85" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_1 pos_86" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_1 pos_87" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">V</td>
<td headers="stub_1_1 pos_88" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_1 pos_89" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">W</td>
<td headers="stub_1_1 pos_90" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">P</td>
<td headers="stub_1_1 pos_91" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">W</td>
<td headers="stub_1_1 pos_92" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_1 pos_93" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">V</td>
<td headers="stub_1_1 pos_94" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">W</td>
<td headers="stub_1_1 pos_95" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td></tr>
    <tr><th id="stub_1_2" scope="row" class="gt_row gt_left gt_stub"></th>
<td headers="stub_1_2 group" class="gt_row gt_right" style="border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000;">beta</td>
<td headers="stub_1_2 name" class="gt_row gt_right" style="border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000;">MHV</td>
<td headers="stub_1_2 start" class="gt_row gt_right" style="border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000;">1191</td>
<td headers="stub_1_2 pos_1" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">T</td>
<td headers="stub_1_2 pos_2" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">S</td>
<td headers="stub_1_2 pos_3" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">I</td>
<td headers="stub_1_2 pos_4" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">P</td>
<td headers="stub_1_2 pos_5" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_2 pos_6" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">P</td>
<td headers="stub_1_2 pos_7" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">P</td>
<td headers="stub_1_2 pos_8" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">D</td>
<td headers="stub_1_2 pos_9" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">F</td>
<td headers="stub_1_2 pos_10" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_2 pos_11" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_2 pos_12" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_2 pos_13" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_2 pos_14" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">D</td>
<td headers="stub_1_2 pos_15" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">Q</td>
<td headers="stub_1_2 pos_16" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">W</td>
<td headers="stub_1_2 pos_17" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">F</td>
<td headers="stub_1_2 pos_18" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_2 pos_19" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_2 pos_20" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">Q</td>
<td headers="stub_1_2 pos_21" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">T</td>
<td headers="stub_1_2 pos_22" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">S</td>
<td headers="stub_1_2 pos_23" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_2 pos_24" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">I</td>
<td headers="stub_1_2 pos_25" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">A</td>
<td headers="stub_1_2 pos_26" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">P</td>
<td headers="stub_1_2 pos_27" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">D</td>
<td headers="stub_1_2 pos_28" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_2 pos_29" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">S</td>
<td headers="stub_1_2 pos_30" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_2 pos_31" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">D</td>
<td headers="stub_1_2 pos_32" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">F</td>
<td headers="stub_1_2 pos_33" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_2 pos_34" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_2 pos_35" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_2 pos_36" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_2 pos_37" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">V</td>
<td headers="stub_1_2 pos_38" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">T</td>
<td headers="stub_1_2 pos_39" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_2 pos_40" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_2 pos_41" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">D</td>
<td headers="stub_1_2 pos_42" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_2 pos_43" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">T</td>
<td headers="stub_1_2 pos_44" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_2 pos_45" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_2 pos_46" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_2 pos_47" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_2 pos_48" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_2 pos_49" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_2 pos_50" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_2 pos_51" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_2 pos_52" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_2 pos_53" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_2 pos_54" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_2 pos_55" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_2 pos_56" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_2 pos_57" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_2 pos_58" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_2 pos_59" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_2 pos_60" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">M</td>
<td headers="stub_1_2 pos_61" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_2 pos_62" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">R</td>
<td headers="stub_1_2 pos_63" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">I</td>
<td headers="stub_1_2 pos_64" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">Q</td>
<td headers="stub_1_2 pos_65" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">D</td>
<td headers="stub_1_2 pos_66" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">A</td>
<td headers="stub_1_2 pos_67" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">I</td>
<td headers="stub_1_2 pos_68" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_2 pos_69" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_2 pos_70" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_2 pos_71" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_2 pos_72" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_2 pos_73" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">S</td>
<td headers="stub_1_2 pos_74" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_2 pos_75" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">I</td>
<td headers="stub_1_2 pos_76" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_2 pos_77" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_2 pos_78" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_2 pos_79" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_2 pos_80" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">V</td>
<td headers="stub_1_2 pos_81" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">G</td>
<td headers="stub_1_2 pos_82" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">T</td>
<td headers="stub_1_2 pos_83" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_2 pos_84" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_2 pos_85" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">M</td>
<td headers="stub_1_2 pos_86" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_2 pos_87" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">V</td>
<td headers="stub_1_2 pos_88" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_2 pos_89" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">W</td>
<td headers="stub_1_2 pos_90" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">P</td>
<td headers="stub_1_2 pos_91" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">W</td>
<td headers="stub_1_2 pos_92" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_2 pos_93" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">V</td>
<td headers="stub_1_2 pos_94" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">W</td>
<td headers="stub_1_2 pos_95" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td></tr>
    <tr><th id="stub_1_3" scope="row" class="gt_row gt_left gt_stub"></th>
<td headers="stub_1_3 group" class="gt_row gt_right" style="border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000;">beta</td>
<td headers="stub_1_3 name" class="gt_row gt_right" style="border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000;">HKU1</td>
<td headers="stub_1_3 start" class="gt_row gt_right" style="border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000;">1226</td>
<td headers="stub_1_3 pos_1" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">H</td>
<td headers="stub_1_3 pos_2" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">S</td>
<td headers="stub_1_3 pos_3" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">V</td>
<td headers="stub_1_3 pos_4" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">P</td>
<td headers="stub_1_3 pos_5" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_3 pos_6" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_3 pos_7" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">S</td>
<td headers="stub_1_3 pos_8" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">D</td>
<td headers="stub_1_3 pos_9" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">F</td>
<td headers="stub_1_3 pos_10" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_3 pos_11" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">S</td>
<td headers="stub_1_3 pos_12" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_3 pos_13" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_3 pos_14" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">S</td>
<td headers="stub_1_3 pos_15" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">H</td>
<td headers="stub_1_3 pos_16" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">W</td>
<td headers="stub_1_3 pos_17" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">F</td>
<td headers="stub_1_3 pos_18" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_3 pos_19" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_3 pos_20" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">Q</td>
<td headers="stub_1_3 pos_21" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">T</td>
<td headers="stub_1_3 pos_22" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">S</td>
<td headers="stub_1_3 pos_23" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_3 pos_24" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">I</td>
<td headers="stub_1_3 pos_25" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">A</td>
<td headers="stub_1_3 pos_26" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">P</td>
<td headers="stub_1_3 pos_27" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_3 pos_28" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_3 pos_29" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">T</td>
<td headers="stub_1_3 pos_30" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_3 pos_31" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_3 pos_32" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_3 pos_33" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">H</td>
<td headers="stub_1_3 pos_34" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">T</td>
<td headers="stub_1_3 pos_35" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">I</td>
<td headers="stub_1_3 pos_36" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_3 pos_37" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">A</td>
<td headers="stub_1_3 pos_38" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">T</td>
<td headers="stub_1_3 pos_39" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">F</td>
<td headers="stub_1_3 pos_40" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_3 pos_41" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">D</td>
<td headers="stub_1_3 pos_42" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_3 pos_43" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_3 pos_44" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_3 pos_45" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_3 pos_46" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_3 pos_47" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_3 pos_48" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_3 pos_49" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_3 pos_50" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_3 pos_51" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_3 pos_52" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_3 pos_53" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_3 pos_54" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_3 pos_55" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_3 pos_56" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_3 pos_57" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_3 pos_58" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_3 pos_59" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_3 pos_60" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">M</td>
<td headers="stub_1_3 pos_61" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_3 pos_62" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_3 pos_63" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">I</td>
<td headers="stub_1_3 pos_64" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">Q</td>
<td headers="stub_1_3 pos_65" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_3 pos_66" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">S</td>
<td headers="stub_1_3 pos_67" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_3 pos_68" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_3 pos_69" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">S</td>
<td headers="stub_1_3 pos_70" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_3 pos_71" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_3 pos_72" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_3 pos_73" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">S</td>
<td headers="stub_1_3 pos_74" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_3 pos_75" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">I</td>
<td headers="stub_1_3 pos_76" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_3 pos_77" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_3 pos_78" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_3 pos_79" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">D</td>
<td headers="stub_1_3 pos_80" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">I</td>
<td headers="stub_1_3 pos_81" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">G</td>
<td headers="stub_1_3 pos_82" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">T</td>
<td headers="stub_1_3 pos_83" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_3 pos_84" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_3 pos_85" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">M</td>
<td headers="stub_1_3 pos_86" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_3 pos_87" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">V</td>
<td headers="stub_1_3 pos_88" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_3 pos_89" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">W</td>
<td headers="stub_1_3 pos_90" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">P</td>
<td headers="stub_1_3 pos_91" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">W</td>
<td headers="stub_1_3 pos_92" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_3 pos_93" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">V</td>
<td headers="stub_1_3 pos_94" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">W</td>
<td headers="stub_1_3 pos_95" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td></tr>
    <tr><th id="stub_1_4" scope="row" class="gt_row gt_left gt_stub"></th>
<td headers="stub_1_4 group" class="gt_row gt_right" style="border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000;">beta</td>
<td headers="stub_1_4 name" class="gt_row gt_right" style="border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000;">SARS</td>
<td headers="stub_1_4 start" class="gt_row gt_right" style="border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000;">1122</td>
<td headers="stub_1_4 pos_1" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">P</td>
<td headers="stub_1_4 pos_2" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_4 pos_3" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">Q</td>
<td headers="stub_1_4 pos_4" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">P</td>
<td headers="stub_1_4 pos_5" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_4 pos_6" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_4 pos_7" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">D</td>
<td headers="stub_1_4 pos_8" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">S</td>
<td headers="stub_1_4 pos_9" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">F</td>
<td headers="stub_1_4 pos_10" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_4 pos_11" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_4 pos_12" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_4 pos_13" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_4 pos_14" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">D</td>
<td headers="stub_1_4 pos_15" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_4 pos_16" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_4 pos_17" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">F</td>
<td headers="stub_1_4 pos_18" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_4 pos_19" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_4 pos_20" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">H</td>
<td headers="stub_1_4 pos_21" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">T</td>
<td headers="stub_1_4 pos_22" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">S</td>
<td headers="stub_1_4 pos_23" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_4 pos_24" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">P</td>
<td headers="stub_1_4 pos_25" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">D</td>
<td headers="stub_1_4 pos_26" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">V</td>
<td headers="stub_1_4 pos_27" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">D</td>
<td headers="stub_1_4 pos_28" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">F</td>
<td headers="stub_1_4 pos_29" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">G</td>
<td headers="stub_1_4 pos_30" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_4 pos_31" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">D</td>
<td headers="stub_1_4 pos_32" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">I</td>
<td headers="stub_1_4 pos_33" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">S</td>
<td headers="stub_1_4 pos_34" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">G</td>
<td headers="stub_1_4 pos_35" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">I</td>
<td headers="stub_1_4 pos_36" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_4 pos_37" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">A</td>
<td headers="stub_1_4 pos_38" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">S</td>
<td headers="stub_1_4 pos_39" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">V</td>
<td headers="stub_1_4 pos_40" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">V</td>
<td headers="stub_1_4 pos_41" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_4 pos_42" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">I</td>
<td headers="stub_1_4 pos_43" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">Q</td>
<td headers="stub_1_4 pos_44" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_4 pos_45" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_4 pos_46" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_4 pos_47" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_4 pos_48" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_4 pos_49" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_4 pos_50" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_4 pos_51" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_4 pos_52" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_4 pos_53" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_4 pos_54" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_4 pos_55" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_4 pos_56" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_4 pos_57" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_4 pos_58" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_4 pos_59" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_4 pos_60" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">I</td>
<td headers="stub_1_4 pos_61" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">D</td>
<td headers="stub_1_4 pos_62" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">R</td>
<td headers="stub_1_4 pos_63" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_4 pos_64" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_4 pos_65" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_4 pos_66" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">V</td>
<td headers="stub_1_4 pos_67" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">A</td>
<td headers="stub_1_4 pos_68" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_4 pos_69" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_4 pos_70" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_4 pos_71" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_4 pos_72" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_4 pos_73" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">S</td>
<td headers="stub_1_4 pos_74" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_4 pos_75" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">I</td>
<td headers="stub_1_4 pos_76" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">D</td>
<td headers="stub_1_4 pos_77" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_4 pos_78" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">Q</td>
<td headers="stub_1_4 pos_79" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_4 pos_80" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_4 pos_81" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">G</td>
<td headers="stub_1_4 pos_82" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_4 pos_83" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_4 pos_84" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_4 pos_85" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">Q</td>
<td headers="stub_1_4 pos_86" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_4 pos_87" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">I</td>
<td headers="stub_1_4 pos_88" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_4 pos_89" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">W</td>
<td headers="stub_1_4 pos_90" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">P</td>
<td headers="stub_1_4 pos_91" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">W</td>
<td headers="stub_1_4 pos_92" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_4 pos_93" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">V</td>
<td headers="stub_1_4 pos_94" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">W</td>
<td headers="stub_1_4 pos_95" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td></tr>
    <tr><th id="stub_1_5" scope="row" class="gt_row gt_left gt_stub"></th>
<td headers="stub_1_5 group" class="gt_row gt_right" style="border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000;">beta</td>
<td headers="stub_1_5 name" class="gt_row gt_right" style="border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000;">SARS2</td>
<td headers="stub_1_5 start" class="gt_row gt_right" style="border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000;">1140</td>
<td headers="stub_1_5 pos_1" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">P</td>
<td headers="stub_1_5 pos_2" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_5 pos_3" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">Q</td>
<td headers="stub_1_5 pos_4" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">P</td>
<td headers="stub_1_5 pos_5" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_5 pos_6" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_5 pos_7" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">D</td>
<td headers="stub_1_5 pos_8" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">S</td>
<td headers="stub_1_5 pos_9" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">F</td>
<td headers="stub_1_5 pos_10" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_5 pos_11" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_5 pos_12" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_5 pos_13" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_5 pos_14" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">D</td>
<td headers="stub_1_5 pos_15" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_5 pos_16" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_5 pos_17" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">F</td>
<td headers="stub_1_5 pos_18" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_5 pos_19" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_5 pos_20" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">H</td>
<td headers="stub_1_5 pos_21" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">T</td>
<td headers="stub_1_5 pos_22" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">S</td>
<td headers="stub_1_5 pos_23" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_5 pos_24" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">P</td>
<td headers="stub_1_5 pos_25" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">D</td>
<td headers="stub_1_5 pos_26" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">V</td>
<td headers="stub_1_5 pos_27" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">D</td>
<td headers="stub_1_5 pos_28" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_5 pos_29" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">G</td>
<td headers="stub_1_5 pos_30" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_5 pos_31" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">D</td>
<td headers="stub_1_5 pos_32" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">I</td>
<td headers="stub_1_5 pos_33" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">S</td>
<td headers="stub_1_5 pos_34" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">G</td>
<td headers="stub_1_5 pos_35" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">I</td>
<td headers="stub_1_5 pos_36" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_5 pos_37" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">A</td>
<td headers="stub_1_5 pos_38" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">S</td>
<td headers="stub_1_5 pos_39" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">V</td>
<td headers="stub_1_5 pos_40" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">V</td>
<td headers="stub_1_5 pos_41" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_5 pos_42" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">I</td>
<td headers="stub_1_5 pos_43" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">Q</td>
<td headers="stub_1_5 pos_44" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_5 pos_45" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_5 pos_46" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_5 pos_47" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_5 pos_48" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_5 pos_49" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_5 pos_50" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_5 pos_51" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_5 pos_52" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_5 pos_53" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_5 pos_54" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_5 pos_55" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_5 pos_56" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_5 pos_57" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_5 pos_58" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_5 pos_59" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_5 pos_60" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">I</td>
<td headers="stub_1_5 pos_61" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">D</td>
<td headers="stub_1_5 pos_62" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">R</td>
<td headers="stub_1_5 pos_63" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_5 pos_64" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_5 pos_65" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_5 pos_66" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">V</td>
<td headers="stub_1_5 pos_67" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">A</td>
<td headers="stub_1_5 pos_68" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_5 pos_69" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_5 pos_70" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_5 pos_71" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_5 pos_72" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_5 pos_73" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">S</td>
<td headers="stub_1_5 pos_74" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_5 pos_75" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">I</td>
<td headers="stub_1_5 pos_76" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">D</td>
<td headers="stub_1_5 pos_77" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_5 pos_78" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_5 pos_79" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_5 pos_80" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_5 pos_81" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">G</td>
<td headers="stub_1_5 pos_82" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_5 pos_83" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_5 pos_84" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">T</td>
<td headers="stub_1_5 pos_85" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_5 pos_86" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_5 pos_87" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_5 pos_88" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_5 pos_89" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">W</td>
<td headers="stub_1_5 pos_90" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">P</td>
<td headers="stub_1_5 pos_91" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">W</td>
<td headers="stub_1_5 pos_92" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_5 pos_93" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">I</td>
<td headers="stub_1_5 pos_94" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">W</td>
<td headers="stub_1_5 pos_95" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td></tr>
    <tr><th id="stub_1_6" scope="row" class="gt_row gt_left gt_stub"></th>
<td headers="stub_1_6 group" class="gt_row gt_right" style="border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000;">beta</td>
<td headers="stub_1_6 name" class="gt_row gt_right" style="border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000;">MERS</td>
<td headers="stub_1_6 start" class="gt_row gt_right" style="border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000;">1223</td>
<td headers="stub_1_6 pos_1" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_6 pos_2" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">G</td>
<td headers="stub_1_6 pos_3" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_6 pos_4" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">S</td>
<td headers="stub_1_6 pos_5" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">T</td>
<td headers="stub_1_6 pos_6" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">G</td>
<td headers="stub_1_6 pos_7" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">I</td>
<td headers="stub_1_6 pos_8" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">D</td>
<td headers="stub_1_6 pos_9" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">F</td>
<td headers="stub_1_6 pos_10" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">Q</td>
<td headers="stub_1_6 pos_11" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">D</td>
<td headers="stub_1_6 pos_12" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_6 pos_13" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_6 pos_14" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">D</td>
<td headers="stub_1_6 pos_15" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_6 pos_16" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_6 pos_17" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">F</td>
<td headers="stub_1_6 pos_18" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_6 pos_19" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_6 pos_20" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">V</td>
<td headers="stub_1_6 pos_21" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">S</td>
<td headers="stub_1_6 pos_22" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">T</td>
<td headers="stub_1_6 pos_23" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_6 pos_24" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">S</td>
<td headers="stub_1_6 pos_25" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">I</td>
<td headers="stub_1_6 pos_26" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">P</td>
<td headers="stub_1_6 pos_27" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_6 pos_28" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">F</td>
<td headers="stub_1_6 pos_29" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">G</td>
<td headers="stub_1_6 pos_30" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_6 pos_31" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">S</td>
<td headers="stub_1_6 pos_32" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_6 pos_33" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">T</td>
<td headers="stub_1_6 pos_34" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">Q</td>
<td headers="stub_1_6 pos_35" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">I</td>
<td headers="stub_1_6 pos_36" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_6 pos_37" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">T</td>
<td headers="stub_1_6 pos_38" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">T</td>
<td headers="stub_1_6 pos_39" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_6 pos_40" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_6 pos_41" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">D</td>
<td headers="stub_1_6 pos_42" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_6 pos_43" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">T</td>
<td headers="stub_1_6 pos_44" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_6 pos_45" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_6 pos_46" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_6 pos_47" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_6 pos_48" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_6 pos_49" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_6 pos_50" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_6 pos_51" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_6 pos_52" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_6 pos_53" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_6 pos_54" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_6 pos_55" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_6 pos_56" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_6 pos_57" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_6 pos_58" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_6 pos_59" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_6 pos_60" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">M</td>
<td headers="stub_1_6 pos_61" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_6 pos_62" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">S</td>
<td headers="stub_1_6 pos_63" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_6 pos_64" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">Q</td>
<td headers="stub_1_6 pos_65" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">Q</td>
<td headers="stub_1_6 pos_66" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">V</td>
<td headers="stub_1_6 pos_67" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">V</td>
<td headers="stub_1_6 pos_68" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_6 pos_69" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">A</td>
<td headers="stub_1_6 pos_70" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_6 pos_71" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_6 pos_72" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_6 pos_73" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">S</td>
<td headers="stub_1_6 pos_74" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_6 pos_75" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">I</td>
<td headers="stub_1_6 pos_76" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">D</td>
<td headers="stub_1_6 pos_77" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_6 pos_78" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_6 pos_79" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_6 pos_80" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_6 pos_81" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">G</td>
<td headers="stub_1_6 pos_82" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_6 pos_83" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_6 pos_84" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">T</td>
<td headers="stub_1_6 pos_85" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_6 pos_86" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_6 pos_87" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_6 pos_88" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_6 pos_89" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">W</td>
<td headers="stub_1_6 pos_90" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">P</td>
<td headers="stub_1_6 pos_91" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">W</td>
<td headers="stub_1_6 pos_92" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_6 pos_93" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">I</td>
<td headers="stub_1_6 pos_94" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">W</td>
<td headers="stub_1_6 pos_95" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td></tr>
    <tr><th id="stub_1_7" scope="row" class="gt_row gt_left gt_stub"></th>
<td headers="stub_1_7 group" class="gt_row gt_right" style="border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000;">alpha</td>
<td headers="stub_1_7 name" class="gt_row gt_right" style="border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000;">229E</td>
<td headers="stub_1_7 start" class="gt_row gt_right" style="border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000;">1025</td>
<td headers="stub_1_7 pos_1" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">T</td>
<td headers="stub_1_7 pos_2" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">I</td>
<td headers="stub_1_7 pos_3" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">V</td>
<td headers="stub_1_7 pos_4" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">P</td>
<td headers="stub_1_7 pos_5" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_7 pos_6" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_7 pos_7" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">I</td>
<td headers="stub_1_7 pos_8" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">D</td>
<td headers="stub_1_7 pos_9" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">V</td>
<td headers="stub_1_7 pos_10" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_7 pos_11" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_7 pos_12" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">T</td>
<td headers="stub_1_7 pos_13" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_7 pos_14" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">Q</td>
<td headers="stub_1_7 pos_15" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_7 pos_16" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_7 pos_17" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">S</td>
<td headers="stub_1_7 pos_18" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_7 pos_19" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_7 pos_20" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_7 pos_21" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">P</td>
<td headers="stub_1_7 pos_22" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_7 pos_23" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_7 pos_24" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">T</td>
<td headers="stub_1_7 pos_25" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">V</td>
<td headers="stub_1_7 pos_26" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">P</td>
<td headers="stub_1_7 pos_27" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">D</td>
<td headers="stub_1_7 pos_28" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_7 pos_29" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_7 pos_30" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_7 pos_31" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">V</td>
<td headers="stub_1_7 pos_32" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">V</td>
<td headers="stub_1_7 pos_33" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_7 pos_34" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">Q</td>
<td headers="stub_1_7 pos_35" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_7 pos_36" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_7 pos_37" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">Q</td>
<td headers="stub_1_7 pos_38" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">T</td>
<td headers="stub_1_7 pos_39" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">I</td>
<td headers="stub_1_7 pos_40" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_7 pos_41" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_7 pos_42" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_7 pos_43" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">T</td>
<td headers="stub_1_7 pos_44" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">S</td>
<td headers="stub_1_7 pos_45" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_7 pos_46" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">I</td>
<td headers="stub_1_7 pos_47" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">S</td>
<td headers="stub_1_7 pos_48" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">T</td>
<td headers="stub_1_7 pos_49" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_7 pos_50" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_7 pos_51" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_7 pos_52" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_7 pos_53" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">S</td>
<td headers="stub_1_7 pos_54" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">A</td>
<td headers="stub_1_7 pos_55" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_7 pos_56" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_7 pos_57" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_7 pos_58" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_7 pos_59" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">T</td>
<td headers="stub_1_7 pos_60" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">V</td>
<td headers="stub_1_7 pos_61" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">Q</td>
<td headers="stub_1_7 pos_62" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_7 pos_63" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_7 pos_64" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">Q</td>
<td headers="stub_1_7 pos_65" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">T</td>
<td headers="stub_1_7 pos_66" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_7 pos_67" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">I</td>
<td headers="stub_1_7 pos_68" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">D</td>
<td headers="stub_1_7 pos_69" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_7 pos_70" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">I</td>
<td headers="stub_1_7 pos_71" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_7 pos_72" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">S</td>
<td headers="stub_1_7 pos_73" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">T</td>
<td headers="stub_1_7 pos_74" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_7 pos_75" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">V</td>
<td headers="stub_1_7 pos_76" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">D</td>
<td headers="stub_1_7 pos_77" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_7 pos_78" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_7 pos_79" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">W</td>
<td headers="stub_1_7 pos_80" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_7 pos_81" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_7 pos_82" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">R</td>
<td headers="stub_1_7 pos_83" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">V</td>
<td headers="stub_1_7 pos_84" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_7 pos_85" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">T</td>
<td headers="stub_1_7 pos_86" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_7 pos_87" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">I</td>
<td headers="stub_1_7 pos_88" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_7 pos_89" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">W</td>
<td headers="stub_1_7 pos_90" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">P</td>
<td headers="stub_1_7 pos_91" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">W</td>
<td headers="stub_1_7 pos_92" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_7 pos_93" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">V</td>
<td headers="stub_1_7 pos_94" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">W</td>
<td headers="stub_1_7 pos_95" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">V</td></tr>
    <tr><th id="stub_1_8" scope="row" class="gt_row gt_left gt_stub"></th>
<td headers="stub_1_8 group" class="gt_row gt_right" style="border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000;">alpha</td>
<td headers="stub_1_8 name" class="gt_row gt_right" style="border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000;">NL63</td>
<td headers="stub_1_8 start" class="gt_row gt_right" style="border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000;">1208</td>
<td headers="stub_1_8 pos_1" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">T</td>
<td headers="stub_1_8 pos_2" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">V</td>
<td headers="stub_1_8 pos_3" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">I</td>
<td headers="stub_1_8 pos_4" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">P</td>
<td headers="stub_1_8 pos_5" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">D</td>
<td headers="stub_1_8 pos_6" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_8 pos_7" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">V</td>
<td headers="stub_1_8 pos_8" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">D</td>
<td headers="stub_1_8 pos_9" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">V</td>
<td headers="stub_1_8 pos_10" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_8 pos_11" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_8 pos_12" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">T</td>
<td headers="stub_1_8 pos_13" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_8 pos_14" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">Q</td>
<td headers="stub_1_8 pos_15" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_8 pos_16" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">F</td>
<td headers="stub_1_8 pos_17" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">A</td>
<td headers="stub_1_8 pos_18" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">Q</td>
<td headers="stub_1_8 pos_19" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_8 pos_20" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_8 pos_21" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">P</td>
<td headers="stub_1_8 pos_22" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_8 pos_23" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_8 pos_24" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">V</td>
<td headers="stub_1_8 pos_25" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_8 pos_26" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">P</td>
<td headers="stub_1_8 pos_27" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_8 pos_28" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">F</td>
<td headers="stub_1_8 pos_29" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_8 pos_30" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFFFF;">-</td>
<td headers="stub_1_8 pos_31" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">D</td>
<td headers="stub_1_8 pos_32" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_8 pos_33" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">T</td>
<td headers="stub_1_8 pos_34" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">P</td>
<td headers="stub_1_8 pos_35" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">F</td>
<td headers="stub_1_8 pos_36" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_8 pos_37" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_8 pos_38" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">T</td>
<td headers="stub_1_8 pos_39" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_8 pos_40" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_8 pos_41" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_8 pos_42" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_8 pos_43" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">S</td>
<td headers="stub_1_8 pos_44" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">S</td>
<td headers="stub_1_8 pos_45" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_8 pos_46" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_8 pos_47" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_8 pos_48" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">Q</td>
<td headers="stub_1_8 pos_49" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_8 pos_50" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_8 pos_51" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">A</td>
<td headers="stub_1_8 pos_52" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_8 pos_53" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">T</td>
<td headers="stub_1_8 pos_54" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">A</td>
<td headers="stub_1_8 pos_55" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">S</td>
<td headers="stub_1_8 pos_56" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_8 pos_57" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">F</td>
<td headers="stub_1_8 pos_58" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">Q</td>
<td headers="stub_1_8 pos_59" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">T</td>
<td headers="stub_1_8 pos_60" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">T</td>
<td headers="stub_1_8 pos_61" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">V</td>
<td headers="stub_1_8 pos_62" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_8 pos_63" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_8 pos_64" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">Q</td>
<td headers="stub_1_8 pos_65" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">G</td>
<td headers="stub_1_8 pos_66" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_8 pos_67" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">I</td>
<td headers="stub_1_8 pos_68" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">D</td>
<td headers="stub_1_8 pos_69" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">Q</td>
<td headers="stub_1_8 pos_70" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">I</td>
<td headers="stub_1_8 pos_71" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_8 pos_72" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">S</td>
<td headers="stub_1_8 pos_73" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">T</td>
<td headers="stub_1_8 pos_74" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_8 pos_75" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">V</td>
<td headers="stub_1_8 pos_76" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">D</td>
<td headers="stub_1_8 pos_77" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_8 pos_78" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_8 pos_79" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_8 pos_80" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">L</td>
<td headers="stub_1_8 pos_81" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_8 pos_82" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">R</td>
<td headers="stub_1_8 pos_83" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">F</td>
<td headers="stub_1_8 pos_84" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FF6D6D;">E</td>
<td headers="stub_1_8 pos_85" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #74CE98;">N</td>
<td headers="stub_1_8 pos_86" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_8 pos_87" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">I</td>
<td headers="stub_1_8 pos_88" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #FFFFFF; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #769DCC;">K</td>
<td headers="stub_1_8 pos_89" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">W</td>
<td headers="stub_1_8 pos_90" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">P</td>
<td headers="stub_1_8 pos_91" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">W</td>
<td headers="stub_1_8 pos_92" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">Y</td>
<td headers="stub_1_8 pos_93" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">V</td>
<td headers="stub_1_8 pos_94" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #FFFF66;">W</td>
<td headers="stub_1_8 pos_95" class="gt_row gt_left" style="font-size: small; text-align: center; text-indent: 0; color: #000000; border-left-width: 0px; border-left-style: solid; border-left-color: #000000; border-right-width: 0px; border-right-style: solid; border-right-color: #000000; border-top-width: 0px; border-top-style: solid; border-top-color: #000000; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: #000000; background-color: #F2BE3C;">V</td></tr>
    <tr><th id="grand_summary_stub_1" scope="row" class="gt_row gt_left gt_stub gt_grand_summary_row gt_first_grand_summary_row">Consensus</th>
<td headers="grand_summary_stub_1 group" class="gt_row gt_right gt_grand_summary_row gt_first_grand_summary_row"><br /></td>
<td headers="grand_summary_stub_1 name" class="gt_row gt_right gt_grand_summary_row gt_first_grand_summary_row"><br /></td>
<td headers="grand_summary_stub_1 start" class="gt_row gt_right gt_grand_summary_row gt_first_grand_summary_row"><br /></td>
<td headers="grand_summary_stub_1 pos_1" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:50%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:50%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_2" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:62.5%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:37.5%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_3" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:62.5%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:37.5%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_4" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:12.5%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:87.5%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_5" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:62.5%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:37.5%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_6" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:50%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:50%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_7" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:75%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:25%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_8" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:25%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:75%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_9" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:25%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:75%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_10" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:50%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:50%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_11" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:50%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:50%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_12" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:25%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:75%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_13" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:0%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:100%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_14" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:37.5%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:62.5%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_15" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:62.5%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:37.5%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_16" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:62.5%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:37.5%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_17" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:25%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:75%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_18" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:25%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:75%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_19" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:25%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:75%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_20" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:62.5%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:37.5%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_21" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:37.5%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:62.5%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_22" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:37.5%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:62.5%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_23" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:25%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:75%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_24" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:75%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:25%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_25" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:62.5%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:37.5%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_26" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:25%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:75%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_27" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:37.5%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:62.5%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_28" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:37.5%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:62.5%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_29" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:62.5%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:37.5%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_30" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:37.5%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:62.5%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_31" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:37.5%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:62.5%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_32" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:62.5%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:37.5%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_33" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:75%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:25%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_34" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:75%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:25%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_35" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:37.5%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:62.5%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_36" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:0%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:100%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_37" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:62.5%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:37.5%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_38" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:25%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:75%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_39" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:75%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:25%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_40" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:25%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:75%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_41" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:50%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:50%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_42" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:25%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:75%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_43" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:62.5%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:37.5%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_44" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:62.5%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:37.5%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_45" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:25%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:75%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_46" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:25%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:75%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_47" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:25%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:75%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_48" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:25%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:75%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_49" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:25%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:75%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_50" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:25%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:75%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_51" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:25%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:75%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_52" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:25%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:75%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_53" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:25%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:75%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_54" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:25%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:75%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_55" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:25%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:75%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_56" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:25%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:75%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_57" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:25%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:75%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_58" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:25%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:75%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_59" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:25%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:75%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_60" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:50%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:50%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_61" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:62.5%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:37.5%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_62" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:50%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:50%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_63" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:25%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:75%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_64" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:25%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:75%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_65" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:50%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:50%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_66" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:62.5%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:37.5%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_67" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:50%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:50%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_68" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:37.5%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:62.5%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_69" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:62.5%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:37.5%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_70" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:25%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:75%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_71" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:0%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:100%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_72" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:50%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:50%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_73" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:25%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:75%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_74" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:25%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:75%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_75" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:25%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:75%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_76" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:37.5%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:62.5%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_77" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:0%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:100%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_78" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:12.5%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:87.5%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_79" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:50%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:50%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_80" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:37.5%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:62.5%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_81" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:25%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:75%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_82" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:62.5%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:37.5%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_83" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:25%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:75%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_84" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:25%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:75%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_85" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:62.5%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:37.5%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_86" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:0%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:100%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_87" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:62.5%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:37.5%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_88" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:0%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:100%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_89" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:0%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:100%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_90" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:0%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:100%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_91" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:0%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:100%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_92" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:0%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:100%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_93" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:25%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:75%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_94" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:0%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:100%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td>
<td headers="grand_summary_stub_1 pos_95" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'><div style="width:100%;height:50px;">
  <div style="width:100%;height:50px;margin:0;padding:0;">
    <div style="height:25%;background:transparent;margin:0;padding:0;"></div>
    <div style="height:75%;background:#4a6fa5;margin:0;padding:0;"></div>
  </div>
</div>
</span></td></tr>
    <tr><th id="grand_summary_stub_2" scope="row" class="gt_row gt_left gt_stub gt_grand_summary_row gt_last_summary_row">Sequence</th>
<td headers="grand_summary_stub_2 group" class="gt_row gt_right gt_grand_summary_row gt_last_summary_row"><br /></td>
<td headers="grand_summary_stub_2 name" class="gt_row gt_right gt_grand_summary_row gt_last_summary_row"><br /></td>
<td headers="grand_summary_stub_2 start" class="gt_row gt_right gt_grand_summary_row gt_last_summary_row"><br /></td>
<td headers="grand_summary_stub_2 pos_1" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>T</span></td>
<td headers="grand_summary_stub_2 pos_2" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>S</span></td>
<td headers="grand_summary_stub_2 pos_3" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>I</span></td>
<td headers="grand_summary_stub_2 pos_4" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>P</span></td>
<td headers="grand_summary_stub_2 pos_5" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>E</span></td>
<td headers="grand_summary_stub_2 pos_6" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>L</span></td>
<td headers="grand_summary_stub_2 pos_7" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>D</span></td>
<td headers="grand_summary_stub_2 pos_8" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>D</span></td>
<td headers="grand_summary_stub_2 pos_9" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>F</span></td>
<td headers="grand_summary_stub_2 pos_10" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>K</span></td>
<td headers="grand_summary_stub_2 pos_11" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>E</span></td>
<td headers="grand_summary_stub_2 pos_12" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>E</span></td>
<td headers="grand_summary_stub_2 pos_13" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>L</span></td>
<td headers="grand_summary_stub_2 pos_14" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>D</span></td>
<td headers="grand_summary_stub_2 pos_15" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>E</span></td>
<td headers="grand_summary_stub_2 pos_16" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>W</span></td>
<td headers="grand_summary_stub_2 pos_17" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>F</span></td>
<td headers="grand_summary_stub_2 pos_18" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>K</span></td>
<td headers="grand_summary_stub_2 pos_19" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>N</span></td>
<td headers="grand_summary_stub_2 pos_20" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>Q</span></td>
<td headers="grand_summary_stub_2 pos_21" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>T</span></td>
<td headers="grand_summary_stub_2 pos_22" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>S</span></td>
<td headers="grand_summary_stub_2 pos_23" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>–</span></td>
<td headers="grand_summary_stub_2 pos_24" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>I</span></td>
<td headers="grand_summary_stub_2 pos_25" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>A</span></td>
<td headers="grand_summary_stub_2 pos_26" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>P</span></td>
<td headers="grand_summary_stub_2 pos_27" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>D</span></td>
<td headers="grand_summary_stub_2 pos_28" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>L</span></td>
<td headers="grand_summary_stub_2 pos_29" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>G</span></td>
<td headers="grand_summary_stub_2 pos_30" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>–</span></td>
<td headers="grand_summary_stub_2 pos_31" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>D</span></td>
<td headers="grand_summary_stub_2 pos_32" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>L</span></td>
<td headers="grand_summary_stub_2 pos_33" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>E</span></td>
<td headers="grand_summary_stub_2 pos_34" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>G</span></td>
<td headers="grand_summary_stub_2 pos_35" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>I</span></td>
<td headers="grand_summary_stub_2 pos_36" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>N</span></td>
<td headers="grand_summary_stub_2 pos_37" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>A</span></td>
<td headers="grand_summary_stub_2 pos_38" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>T</span></td>
<td headers="grand_summary_stub_2 pos_39" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>F</span></td>
<td headers="grand_summary_stub_2 pos_40" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>L</span></td>
<td headers="grand_summary_stub_2 pos_41" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>D</span></td>
<td headers="grand_summary_stub_2 pos_42" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>L</span></td>
<td headers="grand_summary_stub_2 pos_43" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>Q</span></td>
<td headers="grand_summary_stub_2 pos_44" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>Y</span></td>
<td headers="grand_summary_stub_2 pos_45" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>–</span></td>
<td headers="grand_summary_stub_2 pos_46" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>–</span></td>
<td headers="grand_summary_stub_2 pos_47" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>–</span></td>
<td headers="grand_summary_stub_2 pos_48" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>–</span></td>
<td headers="grand_summary_stub_2 pos_49" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>–</span></td>
<td headers="grand_summary_stub_2 pos_50" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>–</span></td>
<td headers="grand_summary_stub_2 pos_51" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>–</span></td>
<td headers="grand_summary_stub_2 pos_52" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>–</span></td>
<td headers="grand_summary_stub_2 pos_53" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>–</span></td>
<td headers="grand_summary_stub_2 pos_54" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>–</span></td>
<td headers="grand_summary_stub_2 pos_55" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>–</span></td>
<td headers="grand_summary_stub_2 pos_56" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>–</span></td>
<td headers="grand_summary_stub_2 pos_57" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>–</span></td>
<td headers="grand_summary_stub_2 pos_58" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>–</span></td>
<td headers="grand_summary_stub_2 pos_59" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>E</span></td>
<td headers="grand_summary_stub_2 pos_60" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>M</span></td>
<td headers="grand_summary_stub_2 pos_61" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>N</span></td>
<td headers="grand_summary_stub_2 pos_62" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>R</span></td>
<td headers="grand_summary_stub_2 pos_63" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>L</span></td>
<td headers="grand_summary_stub_2 pos_64" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>Q</span></td>
<td headers="grand_summary_stub_2 pos_65" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>E</span></td>
<td headers="grand_summary_stub_2 pos_66" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>V</span></td>
<td headers="grand_summary_stub_2 pos_67" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>I</span></td>
<td headers="grand_summary_stub_2 pos_68" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>K</span></td>
<td headers="grand_summary_stub_2 pos_69" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>N</span></td>
<td headers="grand_summary_stub_2 pos_70" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>L</span></td>
<td headers="grand_summary_stub_2 pos_71" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>N</span></td>
<td headers="grand_summary_stub_2 pos_72" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>E</span></td>
<td headers="grand_summary_stub_2 pos_73" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>S</span></td>
<td headers="grand_summary_stub_2 pos_74" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>Y</span></td>
<td headers="grand_summary_stub_2 pos_75" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>I</span></td>
<td headers="grand_summary_stub_2 pos_76" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>D</span></td>
<td headers="grand_summary_stub_2 pos_77" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>L</span></td>
<td headers="grand_summary_stub_2 pos_78" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>K</span></td>
<td headers="grand_summary_stub_2 pos_79" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>E</span></td>
<td headers="grand_summary_stub_2 pos_80" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>L</span></td>
<td headers="grand_summary_stub_2 pos_81" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>G</span></td>
<td headers="grand_summary_stub_2 pos_82" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>T</span></td>
<td headers="grand_summary_stub_2 pos_83" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>Y</span></td>
<td headers="grand_summary_stub_2 pos_84" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>E</span></td>
<td headers="grand_summary_stub_2 pos_85" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>Y</span></td>
<td headers="grand_summary_stub_2 pos_86" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>Y</span></td>
<td headers="grand_summary_stub_2 pos_87" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>I</span></td>
<td headers="grand_summary_stub_2 pos_88" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>K</span></td>
<td headers="grand_summary_stub_2 pos_89" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>W</span></td>
<td headers="grand_summary_stub_2 pos_90" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>P</span></td>
<td headers="grand_summary_stub_2 pos_91" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>W</span></td>
<td headers="grand_summary_stub_2 pos_92" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>Y</span></td>
<td headers="grand_summary_stub_2 pos_93" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>V</span></td>
<td headers="grand_summary_stub_2 pos_94" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>W</span></td>
<td headers="grand_summary_stub_2 pos_95" class="gt_row gt_left gt_grand_summary_row gt_last_summary_row" style="font-size: small; text-align: center; text-indent: 0;"><span class='gt_from_md'>L</span></td></tr>
  </tbody>
  &#10;</table>
</div>

For further customization use the lower-level functions:

## `split_sequences`

`split_sequences` for structuring the data for `gt`, the output of this
function retains the 1 sequence per row structure, but splits each
element of the sequence data, for maximum flexibility for customization
in `gt`

``` r
library(gt)
msa |> split_sequences(seq_column = seq)
#> # A tibble: 8 × 98
#>   group name  start pos_1 pos_2 pos_3 pos_4 pos_5 pos_6 pos_7 pos_8 pos_9 pos_10
#>   <chr> <chr> <dbl> <chr> <chr> <chr> <chr> <chr> <chr> <chr> <chr> <chr> <chr> 
#> 1 beta  OC43   1225 T     S     I     P     N     L     P     D     F     K     
#> 2 beta  MHV    1191 T     S     I     P     N     P     P     D     F     K     
#> 3 beta  HKU1   1226 H     S     V     P     K     L     S     D     F     E     
#> 4 beta  SARS   1122 P     L     Q     P     E     L     D     S     F     K     
#> 5 beta  SARS2  1140 P     L     Q     P     E     L     D     S     F     K     
#> 6 beta  MERS   1223 L     G     N     S     T     G     I     D     F     Q     
#> 7 alpha 229E   1025 T     I     V     P     E     Y     I     D     V     N     
#> 8 alpha NL63   1208 T     V     I     P     D     Y     V     D     V     N     
#> # ℹ 85 more variables: pos_11 <chr>, pos_12 <chr>, pos_13 <chr>, pos_14 <chr>,
#> #   pos_15 <chr>, pos_16 <chr>, pos_17 <chr>, pos_18 <chr>, pos_19 <chr>,
#> #   pos_20 <chr>, pos_21 <chr>, pos_22 <chr>, pos_23 <chr>, pos_24 <chr>,
#> #   pos_25 <chr>, pos_26 <chr>, pos_27 <chr>, pos_28 <chr>, pos_29 <chr>,
#> #   pos_30 <chr>, pos_31 <chr>, pos_32 <chr>, pos_33 <chr>, pos_34 <chr>,
#> #   pos_35 <chr>, pos_36 <chr>, pos_37 <chr>, pos_38 <chr>, pos_39 <chr>,
#> #   pos_40 <chr>, pos_41 <chr>, pos_42 <chr>, pos_43 <chr>, pos_44 <chr>, …
```

## `apply_color_to_aa`

`apply_color_to_aa` is for coloring amino acids by one of the included
palettes

A function is returned, which takes an input and colors according to a
given palette

``` r
apply_color_to_aa("Chemistry")(c("A", "K", "L", "-"))
#>         A         K         L         - 
#> "#f2be3c" "#769dcc" "#f2be3c" "#ffffff"
```

This function can be directly passed to `gt::data_color`

``` r
msa |>
  split_sequences(seq_column = seq) |>
  gt() |>
  data_color(columns = contains('pos_'), fn = apply_color_to_aa('Chemistry'))
```

<div id="skulslbxif" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#skulslbxif table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
&#10;#skulslbxif thead, #skulslbxif tbody, #skulslbxif tfoot, #skulslbxif tr, #skulslbxif td, #skulslbxif th {
  border-style: none;
}
&#10;#skulslbxif p {
  margin: 0;
  padding: 0;
}
&#10;#skulslbxif .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}
&#10;#skulslbxif .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}
&#10;#skulslbxif .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}
&#10;#skulslbxif .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}
&#10;#skulslbxif .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#skulslbxif .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#skulslbxif .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#skulslbxif .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}
&#10;#skulslbxif .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}
&#10;#skulslbxif .gt_column_spanner_outer:first-child {
  padding-left: 0;
}
&#10;#skulslbxif .gt_column_spanner_outer:last-child {
  padding-right: 0;
}
&#10;#skulslbxif .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}
&#10;#skulslbxif .gt_spanner_row {
  border-bottom-style: hidden;
}
&#10;#skulslbxif .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}
&#10;#skulslbxif .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}
&#10;#skulslbxif .gt_from_md > :first-child {
  margin-top: 0;
}
&#10;#skulslbxif .gt_from_md > :last-child {
  margin-bottom: 0;
}
&#10;#skulslbxif .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}
&#10;#skulslbxif .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#skulslbxif .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}
&#10;#skulslbxif .gt_row_group_first td {
  border-top-width: 2px;
}
&#10;#skulslbxif .gt_row_group_first th {
  border-top-width: 2px;
}
&#10;#skulslbxif .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#skulslbxif .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}
&#10;#skulslbxif .gt_first_summary_row.thick {
  border-top-width: 2px;
}
&#10;#skulslbxif .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#skulslbxif .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#skulslbxif .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}
&#10;#skulslbxif .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}
&#10;#skulslbxif .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}
&#10;#skulslbxif .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#skulslbxif .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#skulslbxif .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#skulslbxif .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#skulslbxif .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#skulslbxif .gt_left {
  text-align: left;
}
&#10;#skulslbxif .gt_center {
  text-align: center;
}
&#10;#skulslbxif .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}
&#10;#skulslbxif .gt_font_normal {
  font-weight: normal;
}
&#10;#skulslbxif .gt_font_bold {
  font-weight: bold;
}
&#10;#skulslbxif .gt_font_italic {
  font-style: italic;
}
&#10;#skulslbxif .gt_super {
  font-size: 65%;
}
&#10;#skulslbxif .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}
&#10;#skulslbxif .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}
&#10;#skulslbxif .gt_indent_1 {
  text-indent: 5px;
}
&#10;#skulslbxif .gt_indent_2 {
  text-indent: 10px;
}
&#10;#skulslbxif .gt_indent_3 {
  text-indent: 15px;
}
&#10;#skulslbxif .gt_indent_4 {
  text-indent: 20px;
}
&#10;#skulslbxif .gt_indent_5 {
  text-indent: 25px;
}
&#10;#skulslbxif .katex-display {
  display: inline-flex !important;
  margin-bottom: 0.75em !important;
}
&#10;#skulslbxif div.Reactable > div.rt-table > div.rt-thead > div.rt-tr.rt-tr-group-header > div.rt-th-group:after {
  height: 0px !important;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="group">group</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="name">name</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="start">start</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_1">pos_1</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_2">pos_2</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_3">pos_3</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_4">pos_4</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_5">pos_5</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_6">pos_6</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_7">pos_7</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_8">pos_8</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_9">pos_9</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_10">pos_10</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_11">pos_11</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_12">pos_12</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_13">pos_13</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_14">pos_14</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_15">pos_15</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_16">pos_16</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_17">pos_17</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_18">pos_18</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_19">pos_19</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_20">pos_20</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_21">pos_21</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_22">pos_22</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_23">pos_23</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_24">pos_24</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_25">pos_25</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_26">pos_26</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_27">pos_27</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_28">pos_28</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_29">pos_29</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_30">pos_30</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_31">pos_31</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_32">pos_32</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_33">pos_33</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_34">pos_34</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_35">pos_35</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_36">pos_36</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_37">pos_37</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_38">pos_38</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_39">pos_39</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_40">pos_40</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_41">pos_41</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_42">pos_42</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_43">pos_43</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_44">pos_44</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_45">pos_45</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_46">pos_46</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_47">pos_47</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_48">pos_48</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_49">pos_49</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_50">pos_50</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_51">pos_51</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_52">pos_52</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_53">pos_53</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_54">pos_54</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_55">pos_55</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_56">pos_56</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_57">pos_57</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_58">pos_58</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_59">pos_59</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_60">pos_60</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_61">pos_61</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_62">pos_62</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_63">pos_63</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_64">pos_64</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_65">pos_65</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_66">pos_66</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_67">pos_67</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_68">pos_68</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_69">pos_69</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_70">pos_70</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_71">pos_71</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_72">pos_72</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_73">pos_73</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_74">pos_74</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_75">pos_75</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_76">pos_76</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_77">pos_77</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_78">pos_78</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_79">pos_79</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_80">pos_80</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_81">pos_81</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_82">pos_82</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_83">pos_83</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_84">pos_84</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_85">pos_85</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_86">pos_86</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_87">pos_87</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_88">pos_88</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_89">pos_89</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_90">pos_90</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_91">pos_91</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_92">pos_92</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_93">pos_93</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_94">pos_94</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_95">pos_95</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="group" class="gt_row gt_left">beta</td>
<td headers="name" class="gt_row gt_left">OC43</td>
<td headers="start" class="gt_row gt_right">1225</td>
<td headers="pos_1" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_2" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_3" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_4" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_5" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_6" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_7" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_8" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_9" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="pos_10" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_11" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_12" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_13" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_14" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_15" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_16" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_17" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="pos_18" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_19" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_20" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_21" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_22" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_23" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_24" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_25" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">A</td>
<td headers="pos_26" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_27" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_28" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_29" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_30" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_31" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_32" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_33" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_34" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_35" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_36" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_37" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_38" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_39" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="pos_40" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_41" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_42" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_43" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_44" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_45" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_46" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_47" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_48" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_49" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_50" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_51" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_52" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_53" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_54" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_55" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_56" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_57" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_58" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_59" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_60" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">M</td>
<td headers="pos_61" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_62" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">R</td>
<td headers="pos_63" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_64" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_65" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_66" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">A</td>
<td headers="pos_67" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_68" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_69" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_70" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_71" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_72" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_73" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_74" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_75" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_76" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_77" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_78" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_79" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_80" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_81" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">G</td>
<td headers="pos_82" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_83" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_84" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_85" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_86" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_87" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_88" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_89" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_90" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_91" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_92" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_93" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_94" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_95" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td></tr>
    <tr><td headers="group" class="gt_row gt_left">beta</td>
<td headers="name" class="gt_row gt_left">MHV</td>
<td headers="start" class="gt_row gt_right">1191</td>
<td headers="pos_1" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_2" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_3" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_4" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_5" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_6" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_7" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_8" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_9" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="pos_10" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_11" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_12" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_13" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_14" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_15" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_16" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_17" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="pos_18" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_19" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_20" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_21" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_22" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_23" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_24" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_25" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">A</td>
<td headers="pos_26" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_27" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_28" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_29" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_30" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_31" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_32" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="pos_33" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_34" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_35" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_36" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_37" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_38" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_39" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_40" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_41" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_42" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_43" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_44" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_45" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_46" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_47" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_48" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_49" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_50" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_51" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_52" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_53" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_54" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_55" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_56" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_57" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_58" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_59" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_60" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">M</td>
<td headers="pos_61" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_62" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">R</td>
<td headers="pos_63" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_64" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_65" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_66" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">A</td>
<td headers="pos_67" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_68" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_69" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_70" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_71" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_72" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_73" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_74" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_75" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_76" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_77" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_78" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_79" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_80" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_81" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">G</td>
<td headers="pos_82" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_83" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_84" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_85" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">M</td>
<td headers="pos_86" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_87" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_88" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_89" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_90" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_91" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_92" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_93" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_94" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_95" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td></tr>
    <tr><td headers="group" class="gt_row gt_left">beta</td>
<td headers="name" class="gt_row gt_left">HKU1</td>
<td headers="start" class="gt_row gt_right">1226</td>
<td headers="pos_1" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">H</td>
<td headers="pos_2" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_3" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_4" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_5" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_6" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_7" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_8" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_9" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="pos_10" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_11" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_12" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_13" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_14" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_15" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">H</td>
<td headers="pos_16" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_17" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="pos_18" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_19" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_20" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_21" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_22" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_23" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_24" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_25" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">A</td>
<td headers="pos_26" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_27" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_28" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_29" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_30" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_31" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_32" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_33" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">H</td>
<td headers="pos_34" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_35" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_36" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_37" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">A</td>
<td headers="pos_38" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_39" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="pos_40" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_41" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_42" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_43" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_44" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_45" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_46" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_47" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_48" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_49" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_50" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_51" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_52" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_53" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_54" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_55" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_56" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_57" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_58" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_59" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_60" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">M</td>
<td headers="pos_61" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_62" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_63" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_64" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_65" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_66" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_67" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_68" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_69" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_70" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_71" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_72" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_73" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_74" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_75" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_76" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_77" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_78" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_79" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_80" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_81" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">G</td>
<td headers="pos_82" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_83" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_84" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_85" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">M</td>
<td headers="pos_86" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_87" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_88" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_89" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_90" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_91" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_92" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_93" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_94" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_95" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td></tr>
    <tr><td headers="group" class="gt_row gt_left">beta</td>
<td headers="name" class="gt_row gt_left">SARS</td>
<td headers="start" class="gt_row gt_right">1122</td>
<td headers="pos_1" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_2" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_3" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_4" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_5" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_6" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_7" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_8" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_9" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="pos_10" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_11" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_12" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_13" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_14" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_15" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_16" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_17" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="pos_18" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_19" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_20" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">H</td>
<td headers="pos_21" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_22" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_23" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_24" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_25" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_26" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_27" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_28" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="pos_29" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">G</td>
<td headers="pos_30" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_31" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_32" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_33" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_34" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">G</td>
<td headers="pos_35" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_36" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_37" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">A</td>
<td headers="pos_38" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_39" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_40" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_41" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_42" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_43" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_44" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_45" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_46" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_47" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_48" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_49" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_50" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_51" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_52" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_53" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_54" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_55" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_56" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_57" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_58" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_59" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_60" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_61" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_62" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">R</td>
<td headers="pos_63" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_64" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_65" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_66" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_67" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">A</td>
<td headers="pos_68" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_69" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_70" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_71" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_72" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_73" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_74" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_75" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_76" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_77" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_78" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_79" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_80" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_81" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">G</td>
<td headers="pos_82" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_83" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_84" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_85" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_86" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_87" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_88" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_89" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_90" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_91" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_92" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_93" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_94" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_95" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td></tr>
    <tr><td headers="group" class="gt_row gt_left">beta</td>
<td headers="name" class="gt_row gt_left">SARS2</td>
<td headers="start" class="gt_row gt_right">1140</td>
<td headers="pos_1" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_2" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_3" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_4" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_5" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_6" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_7" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_8" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_9" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="pos_10" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_11" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_12" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_13" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_14" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_15" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_16" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_17" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="pos_18" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_19" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_20" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">H</td>
<td headers="pos_21" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_22" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_23" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_24" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_25" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_26" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_27" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_28" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_29" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">G</td>
<td headers="pos_30" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_31" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_32" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_33" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_34" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">G</td>
<td headers="pos_35" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_36" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_37" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">A</td>
<td headers="pos_38" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_39" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_40" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_41" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_42" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_43" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_44" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_45" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_46" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_47" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_48" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_49" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_50" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_51" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_52" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_53" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_54" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_55" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_56" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_57" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_58" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_59" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_60" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_61" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_62" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">R</td>
<td headers="pos_63" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_64" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_65" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_66" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_67" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">A</td>
<td headers="pos_68" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_69" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_70" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_71" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_72" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_73" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_74" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_75" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_76" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_77" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_78" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_79" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_80" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_81" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">G</td>
<td headers="pos_82" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_83" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_84" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_85" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_86" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_87" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_88" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_89" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_90" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_91" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_92" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_93" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_94" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_95" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td></tr>
    <tr><td headers="group" class="gt_row gt_left">beta</td>
<td headers="name" class="gt_row gt_left">MERS</td>
<td headers="start" class="gt_row gt_right">1223</td>
<td headers="pos_1" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_2" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">G</td>
<td headers="pos_3" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_4" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_5" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_6" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">G</td>
<td headers="pos_7" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_8" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_9" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="pos_10" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_11" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_12" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_13" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_14" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_15" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_16" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_17" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="pos_18" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_19" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_20" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_21" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_22" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_23" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_24" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_25" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_26" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_27" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_28" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="pos_29" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">G</td>
<td headers="pos_30" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_31" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_32" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_33" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_34" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_35" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_36" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_37" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_38" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_39" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_40" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_41" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_42" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_43" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_44" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_45" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_46" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_47" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_48" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_49" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_50" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_51" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_52" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_53" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_54" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_55" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_56" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_57" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_58" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_59" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_60" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">M</td>
<td headers="pos_61" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_62" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_63" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_64" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_65" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_66" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_67" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_68" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_69" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">A</td>
<td headers="pos_70" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_71" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_72" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_73" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_74" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_75" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_76" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_77" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_78" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_79" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_80" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_81" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">G</td>
<td headers="pos_82" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_83" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_84" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_85" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_86" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_87" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_88" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_89" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_90" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_91" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_92" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_93" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_94" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_95" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td></tr>
    <tr><td headers="group" class="gt_row gt_left">alpha</td>
<td headers="name" class="gt_row gt_left">229E</td>
<td headers="start" class="gt_row gt_right">1025</td>
<td headers="pos_1" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_2" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_3" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_4" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_5" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_6" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_7" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_8" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_9" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_10" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_11" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_12" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_13" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_14" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_15" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_16" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_17" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_18" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_19" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_20" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_21" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_22" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_23" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_24" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_25" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_26" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_27" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_28" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_29" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_30" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_31" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_32" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_33" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_34" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_35" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_36" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_37" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_38" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_39" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_40" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_41" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_42" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_43" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_44" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_45" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_46" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_47" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_48" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_49" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_50" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_51" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_52" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_53" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_54" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">A</td>
<td headers="pos_55" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_56" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_57" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_58" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_59" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_60" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_61" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_62" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_63" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_64" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_65" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_66" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_67" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_68" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_69" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_70" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_71" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_72" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_73" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_74" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_75" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_76" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_77" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_78" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_79" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_80" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_81" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_82" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">R</td>
<td headers="pos_83" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_84" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_85" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_86" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_87" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_88" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_89" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_90" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_91" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_92" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_93" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_94" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_95" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td></tr>
    <tr><td headers="group" class="gt_row gt_left">alpha</td>
<td headers="name" class="gt_row gt_left">NL63</td>
<td headers="start" class="gt_row gt_right">1208</td>
<td headers="pos_1" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_2" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_3" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_4" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_5" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_6" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_7" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_8" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_9" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_10" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_11" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_12" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_13" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_14" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_15" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_16" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="pos_17" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">A</td>
<td headers="pos_18" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_19" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_20" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_21" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_22" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_23" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_24" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_25" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_26" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_27" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_28" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="pos_29" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_30" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_31" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_32" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_33" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_34" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_35" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="pos_36" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_37" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_38" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_39" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_40" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_41" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_42" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_43" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_44" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_45" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_46" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_47" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_48" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_49" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_50" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_51" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">A</td>
<td headers="pos_52" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_53" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_54" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">A</td>
<td headers="pos_55" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_56" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_57" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="pos_58" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_59" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_60" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_61" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_62" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_63" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_64" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_65" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">G</td>
<td headers="pos_66" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_67" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_68" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_69" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_70" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_71" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_72" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_73" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_74" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_75" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_76" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_77" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_78" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_79" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_80" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_81" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_82" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">R</td>
<td headers="pos_83" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="pos_84" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_85" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_86" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_87" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_88" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_89" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_90" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_91" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_92" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_93" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_94" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_95" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td></tr>
  </tbody>
  &#10;</table>
</div>

## `get_consensus`

`get_consensus` for adding consensus sequence and frequency data. Pass
to either `gt::grand_summary_rows` or `gt::summary_rows`.

``` r
msa |>
  split_sequences(seq_column = seq) |>
  gt() |>
  data_color(columns = contains('pos_'), fn = apply_color_to_aa('Chemistry')) |>
  grand_summary_rows(
    columns = contains('pos_'),
    fns = list(
      consensus = ~ get_consensus(.)
    )
  )
```

<div id="bopasveulm" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#bopasveulm table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
&#10;#bopasveulm thead, #bopasveulm tbody, #bopasveulm tfoot, #bopasveulm tr, #bopasveulm td, #bopasveulm th {
  border-style: none;
}
&#10;#bopasveulm p {
  margin: 0;
  padding: 0;
}
&#10;#bopasveulm .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}
&#10;#bopasveulm .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}
&#10;#bopasveulm .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}
&#10;#bopasveulm .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}
&#10;#bopasveulm .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#bopasveulm .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#bopasveulm .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#bopasveulm .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}
&#10;#bopasveulm .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}
&#10;#bopasveulm .gt_column_spanner_outer:first-child {
  padding-left: 0;
}
&#10;#bopasveulm .gt_column_spanner_outer:last-child {
  padding-right: 0;
}
&#10;#bopasveulm .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}
&#10;#bopasveulm .gt_spanner_row {
  border-bottom-style: hidden;
}
&#10;#bopasveulm .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}
&#10;#bopasveulm .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}
&#10;#bopasveulm .gt_from_md > :first-child {
  margin-top: 0;
}
&#10;#bopasveulm .gt_from_md > :last-child {
  margin-bottom: 0;
}
&#10;#bopasveulm .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}
&#10;#bopasveulm .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#bopasveulm .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}
&#10;#bopasveulm .gt_row_group_first td {
  border-top-width: 2px;
}
&#10;#bopasveulm .gt_row_group_first th {
  border-top-width: 2px;
}
&#10;#bopasveulm .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#bopasveulm .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}
&#10;#bopasveulm .gt_first_summary_row.thick {
  border-top-width: 2px;
}
&#10;#bopasveulm .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#bopasveulm .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#bopasveulm .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}
&#10;#bopasveulm .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}
&#10;#bopasveulm .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}
&#10;#bopasveulm .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#bopasveulm .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#bopasveulm .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#bopasveulm .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#bopasveulm .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#bopasveulm .gt_left {
  text-align: left;
}
&#10;#bopasveulm .gt_center {
  text-align: center;
}
&#10;#bopasveulm .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}
&#10;#bopasveulm .gt_font_normal {
  font-weight: normal;
}
&#10;#bopasveulm .gt_font_bold {
  font-weight: bold;
}
&#10;#bopasveulm .gt_font_italic {
  font-style: italic;
}
&#10;#bopasveulm .gt_super {
  font-size: 65%;
}
&#10;#bopasveulm .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}
&#10;#bopasveulm .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}
&#10;#bopasveulm .gt_indent_1 {
  text-indent: 5px;
}
&#10;#bopasveulm .gt_indent_2 {
  text-indent: 10px;
}
&#10;#bopasveulm .gt_indent_3 {
  text-indent: 15px;
}
&#10;#bopasveulm .gt_indent_4 {
  text-indent: 20px;
}
&#10;#bopasveulm .gt_indent_5 {
  text-indent: 25px;
}
&#10;#bopasveulm .katex-display {
  display: inline-flex !important;
  margin-bottom: 0.75em !important;
}
&#10;#bopasveulm div.Reactable > div.rt-table > div.rt-thead > div.rt-tr.rt-tr-group-header > div.rt-th-group:after {
  height: 0px !important;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="a::stub"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="group">group</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="name">name</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="start">start</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_1">pos_1</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_2">pos_2</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_3">pos_3</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_4">pos_4</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_5">pos_5</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_6">pos_6</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_7">pos_7</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_8">pos_8</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_9">pos_9</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_10">pos_10</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_11">pos_11</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_12">pos_12</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_13">pos_13</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_14">pos_14</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_15">pos_15</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_16">pos_16</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_17">pos_17</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_18">pos_18</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_19">pos_19</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_20">pos_20</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_21">pos_21</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_22">pos_22</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_23">pos_23</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_24">pos_24</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_25">pos_25</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_26">pos_26</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_27">pos_27</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_28">pos_28</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_29">pos_29</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_30">pos_30</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_31">pos_31</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_32">pos_32</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_33">pos_33</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_34">pos_34</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_35">pos_35</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_36">pos_36</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_37">pos_37</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_38">pos_38</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_39">pos_39</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_40">pos_40</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_41">pos_41</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_42">pos_42</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_43">pos_43</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_44">pos_44</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_45">pos_45</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_46">pos_46</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_47">pos_47</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_48">pos_48</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_49">pos_49</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_50">pos_50</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_51">pos_51</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_52">pos_52</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_53">pos_53</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_54">pos_54</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_55">pos_55</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_56">pos_56</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_57">pos_57</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_58">pos_58</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_59">pos_59</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_60">pos_60</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_61">pos_61</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_62">pos_62</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_63">pos_63</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_64">pos_64</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_65">pos_65</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_66">pos_66</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_67">pos_67</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_68">pos_68</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_69">pos_69</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_70">pos_70</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_71">pos_71</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_72">pos_72</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_73">pos_73</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_74">pos_74</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_75">pos_75</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_76">pos_76</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_77">pos_77</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_78">pos_78</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_79">pos_79</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_80">pos_80</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_81">pos_81</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_82">pos_82</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_83">pos_83</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_84">pos_84</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_85">pos_85</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_86">pos_86</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_87">pos_87</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_88">pos_88</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_89">pos_89</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_90">pos_90</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_91">pos_91</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_92">pos_92</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_93">pos_93</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_94">pos_94</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_95">pos_95</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><th id="stub_1_1" scope="row" class="gt_row gt_left gt_stub"></th>
<td headers="stub_1_1 group" class="gt_row gt_left">beta</td>
<td headers="stub_1_1 name" class="gt_row gt_left">OC43</td>
<td headers="stub_1_1 start" class="gt_row gt_right">1225</td>
<td headers="stub_1_1 pos_1" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="stub_1_1 pos_2" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="stub_1_1 pos_3" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="stub_1_1 pos_4" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="stub_1_1 pos_5" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_1 pos_6" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_1 pos_7" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="stub_1_1 pos_8" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="stub_1_1 pos_9" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="stub_1_1 pos_10" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_1 pos_11" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_1 pos_12" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_1 pos_13" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_1 pos_14" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="stub_1_1 pos_15" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="stub_1_1 pos_16" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="stub_1_1 pos_17" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="stub_1_1 pos_18" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_1 pos_19" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_1 pos_20" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="stub_1_1 pos_21" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="stub_1_1 pos_22" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="stub_1_1 pos_23" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_1 pos_24" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="stub_1_1 pos_25" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">A</td>
<td headers="stub_1_1 pos_26" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="stub_1_1 pos_27" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="stub_1_1 pos_28" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_1 pos_29" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="stub_1_1 pos_30" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_1 pos_31" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="stub_1_1 pos_32" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_1 pos_33" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_1 pos_34" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_1 pos_35" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="stub_1_1 pos_36" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_1 pos_37" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="stub_1_1 pos_38" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="stub_1_1 pos_39" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="stub_1_1 pos_40" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_1 pos_41" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="stub_1_1 pos_42" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_1 pos_43" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="stub_1_1 pos_44" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="stub_1_1 pos_45" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_1 pos_46" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_1 pos_47" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_1 pos_48" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_1 pos_49" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_1 pos_50" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_1 pos_51" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_1 pos_52" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_1 pos_53" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_1 pos_54" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_1 pos_55" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_1 pos_56" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_1 pos_57" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_1 pos_58" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_1 pos_59" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_1 pos_60" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">M</td>
<td headers="stub_1_1 pos_61" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_1 pos_62" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">R</td>
<td headers="stub_1_1 pos_63" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_1 pos_64" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="stub_1_1 pos_65" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_1 pos_66" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">A</td>
<td headers="stub_1_1 pos_67" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="stub_1_1 pos_68" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_1 pos_69" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="stub_1_1 pos_70" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_1 pos_71" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_1 pos_72" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="stub_1_1 pos_73" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="stub_1_1 pos_74" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_1 pos_75" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="stub_1_1 pos_76" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_1 pos_77" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_1 pos_78" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_1 pos_79" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="stub_1_1 pos_80" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="stub_1_1 pos_81" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">G</td>
<td headers="stub_1_1 pos_82" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="stub_1_1 pos_83" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_1 pos_84" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_1 pos_85" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_1 pos_86" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_1 pos_87" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="stub_1_1 pos_88" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_1 pos_89" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="stub_1_1 pos_90" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="stub_1_1 pos_91" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="stub_1_1 pos_92" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_1 pos_93" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="stub_1_1 pos_94" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="stub_1_1 pos_95" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td></tr>
    <tr><th id="stub_1_2" scope="row" class="gt_row gt_left gt_stub"></th>
<td headers="stub_1_2 group" class="gt_row gt_left">beta</td>
<td headers="stub_1_2 name" class="gt_row gt_left">MHV</td>
<td headers="stub_1_2 start" class="gt_row gt_right">1191</td>
<td headers="stub_1_2 pos_1" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="stub_1_2 pos_2" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="stub_1_2 pos_3" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="stub_1_2 pos_4" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="stub_1_2 pos_5" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_2 pos_6" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="stub_1_2 pos_7" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="stub_1_2 pos_8" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="stub_1_2 pos_9" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="stub_1_2 pos_10" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_2 pos_11" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_2 pos_12" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_2 pos_13" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_2 pos_14" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="stub_1_2 pos_15" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="stub_1_2 pos_16" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="stub_1_2 pos_17" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="stub_1_2 pos_18" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_2 pos_19" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_2 pos_20" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="stub_1_2 pos_21" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="stub_1_2 pos_22" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="stub_1_2 pos_23" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_2 pos_24" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="stub_1_2 pos_25" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">A</td>
<td headers="stub_1_2 pos_26" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="stub_1_2 pos_27" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="stub_1_2 pos_28" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_2 pos_29" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="stub_1_2 pos_30" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_2 pos_31" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="stub_1_2 pos_32" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="stub_1_2 pos_33" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_2 pos_34" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_2 pos_35" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_2 pos_36" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_2 pos_37" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="stub_1_2 pos_38" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="stub_1_2 pos_39" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_2 pos_40" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_2 pos_41" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="stub_1_2 pos_42" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_2 pos_43" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="stub_1_2 pos_44" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_2 pos_45" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_2 pos_46" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_2 pos_47" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_2 pos_48" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_2 pos_49" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_2 pos_50" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_2 pos_51" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_2 pos_52" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_2 pos_53" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_2 pos_54" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_2 pos_55" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_2 pos_56" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_2 pos_57" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_2 pos_58" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_2 pos_59" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_2 pos_60" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">M</td>
<td headers="stub_1_2 pos_61" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_2 pos_62" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">R</td>
<td headers="stub_1_2 pos_63" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="stub_1_2 pos_64" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="stub_1_2 pos_65" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="stub_1_2 pos_66" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">A</td>
<td headers="stub_1_2 pos_67" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="stub_1_2 pos_68" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_2 pos_69" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_2 pos_70" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_2 pos_71" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_2 pos_72" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_2 pos_73" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="stub_1_2 pos_74" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_2 pos_75" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="stub_1_2 pos_76" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_2 pos_77" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_2 pos_78" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_2 pos_79" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_2 pos_80" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="stub_1_2 pos_81" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">G</td>
<td headers="stub_1_2 pos_82" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="stub_1_2 pos_83" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_2 pos_84" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_2 pos_85" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">M</td>
<td headers="stub_1_2 pos_86" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_2 pos_87" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="stub_1_2 pos_88" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_2 pos_89" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="stub_1_2 pos_90" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="stub_1_2 pos_91" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="stub_1_2 pos_92" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_2 pos_93" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="stub_1_2 pos_94" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="stub_1_2 pos_95" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td></tr>
    <tr><th id="stub_1_3" scope="row" class="gt_row gt_left gt_stub"></th>
<td headers="stub_1_3 group" class="gt_row gt_left">beta</td>
<td headers="stub_1_3 name" class="gt_row gt_left">HKU1</td>
<td headers="stub_1_3 start" class="gt_row gt_right">1226</td>
<td headers="stub_1_3 pos_1" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">H</td>
<td headers="stub_1_3 pos_2" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="stub_1_3 pos_3" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="stub_1_3 pos_4" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="stub_1_3 pos_5" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_3 pos_6" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_3 pos_7" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="stub_1_3 pos_8" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="stub_1_3 pos_9" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="stub_1_3 pos_10" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_3 pos_11" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="stub_1_3 pos_12" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_3 pos_13" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_3 pos_14" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="stub_1_3 pos_15" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">H</td>
<td headers="stub_1_3 pos_16" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="stub_1_3 pos_17" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="stub_1_3 pos_18" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_3 pos_19" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_3 pos_20" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="stub_1_3 pos_21" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="stub_1_3 pos_22" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="stub_1_3 pos_23" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_3 pos_24" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="stub_1_3 pos_25" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">A</td>
<td headers="stub_1_3 pos_26" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="stub_1_3 pos_27" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_3 pos_28" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_3 pos_29" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="stub_1_3 pos_30" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_3 pos_31" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_3 pos_32" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_3 pos_33" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">H</td>
<td headers="stub_1_3 pos_34" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="stub_1_3 pos_35" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="stub_1_3 pos_36" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_3 pos_37" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">A</td>
<td headers="stub_1_3 pos_38" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="stub_1_3 pos_39" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="stub_1_3 pos_40" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_3 pos_41" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="stub_1_3 pos_42" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_3 pos_43" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_3 pos_44" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_3 pos_45" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_3 pos_46" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_3 pos_47" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_3 pos_48" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_3 pos_49" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_3 pos_50" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_3 pos_51" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_3 pos_52" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_3 pos_53" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_3 pos_54" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_3 pos_55" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_3 pos_56" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_3 pos_57" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_3 pos_58" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_3 pos_59" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_3 pos_60" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">M</td>
<td headers="stub_1_3 pos_61" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_3 pos_62" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_3 pos_63" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="stub_1_3 pos_64" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="stub_1_3 pos_65" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_3 pos_66" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="stub_1_3 pos_67" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_3 pos_68" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_3 pos_69" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="stub_1_3 pos_70" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_3 pos_71" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_3 pos_72" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_3 pos_73" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="stub_1_3 pos_74" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_3 pos_75" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="stub_1_3 pos_76" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_3 pos_77" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_3 pos_78" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_3 pos_79" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="stub_1_3 pos_80" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="stub_1_3 pos_81" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">G</td>
<td headers="stub_1_3 pos_82" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="stub_1_3 pos_83" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_3 pos_84" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_3 pos_85" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">M</td>
<td headers="stub_1_3 pos_86" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_3 pos_87" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="stub_1_3 pos_88" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_3 pos_89" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="stub_1_3 pos_90" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="stub_1_3 pos_91" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="stub_1_3 pos_92" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_3 pos_93" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="stub_1_3 pos_94" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="stub_1_3 pos_95" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td></tr>
    <tr><th id="stub_1_4" scope="row" class="gt_row gt_left gt_stub"></th>
<td headers="stub_1_4 group" class="gt_row gt_left">beta</td>
<td headers="stub_1_4 name" class="gt_row gt_left">SARS</td>
<td headers="stub_1_4 start" class="gt_row gt_right">1122</td>
<td headers="stub_1_4 pos_1" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="stub_1_4 pos_2" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_4 pos_3" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="stub_1_4 pos_4" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="stub_1_4 pos_5" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_4 pos_6" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_4 pos_7" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="stub_1_4 pos_8" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="stub_1_4 pos_9" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="stub_1_4 pos_10" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_4 pos_11" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_4 pos_12" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_4 pos_13" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_4 pos_14" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="stub_1_4 pos_15" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_4 pos_16" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_4 pos_17" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="stub_1_4 pos_18" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_4 pos_19" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_4 pos_20" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">H</td>
<td headers="stub_1_4 pos_21" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="stub_1_4 pos_22" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="stub_1_4 pos_23" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_4 pos_24" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="stub_1_4 pos_25" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="stub_1_4 pos_26" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="stub_1_4 pos_27" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="stub_1_4 pos_28" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="stub_1_4 pos_29" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">G</td>
<td headers="stub_1_4 pos_30" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_4 pos_31" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="stub_1_4 pos_32" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="stub_1_4 pos_33" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="stub_1_4 pos_34" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">G</td>
<td headers="stub_1_4 pos_35" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="stub_1_4 pos_36" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_4 pos_37" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">A</td>
<td headers="stub_1_4 pos_38" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="stub_1_4 pos_39" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="stub_1_4 pos_40" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="stub_1_4 pos_41" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_4 pos_42" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="stub_1_4 pos_43" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="stub_1_4 pos_44" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_4 pos_45" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_4 pos_46" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_4 pos_47" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_4 pos_48" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_4 pos_49" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_4 pos_50" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_4 pos_51" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_4 pos_52" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_4 pos_53" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_4 pos_54" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_4 pos_55" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_4 pos_56" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_4 pos_57" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_4 pos_58" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_4 pos_59" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_4 pos_60" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="stub_1_4 pos_61" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="stub_1_4 pos_62" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">R</td>
<td headers="stub_1_4 pos_63" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_4 pos_64" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_4 pos_65" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_4 pos_66" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="stub_1_4 pos_67" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">A</td>
<td headers="stub_1_4 pos_68" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_4 pos_69" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_4 pos_70" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_4 pos_71" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_4 pos_72" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_4 pos_73" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="stub_1_4 pos_74" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_4 pos_75" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="stub_1_4 pos_76" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="stub_1_4 pos_77" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_4 pos_78" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="stub_1_4 pos_79" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_4 pos_80" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_4 pos_81" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">G</td>
<td headers="stub_1_4 pos_82" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_4 pos_83" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_4 pos_84" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_4 pos_85" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="stub_1_4 pos_86" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_4 pos_87" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="stub_1_4 pos_88" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_4 pos_89" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="stub_1_4 pos_90" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="stub_1_4 pos_91" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="stub_1_4 pos_92" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_4 pos_93" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="stub_1_4 pos_94" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="stub_1_4 pos_95" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td></tr>
    <tr><th id="stub_1_5" scope="row" class="gt_row gt_left gt_stub"></th>
<td headers="stub_1_5 group" class="gt_row gt_left">beta</td>
<td headers="stub_1_5 name" class="gt_row gt_left">SARS2</td>
<td headers="stub_1_5 start" class="gt_row gt_right">1140</td>
<td headers="stub_1_5 pos_1" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="stub_1_5 pos_2" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_5 pos_3" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="stub_1_5 pos_4" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="stub_1_5 pos_5" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_5 pos_6" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_5 pos_7" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="stub_1_5 pos_8" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="stub_1_5 pos_9" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="stub_1_5 pos_10" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_5 pos_11" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_5 pos_12" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_5 pos_13" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_5 pos_14" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="stub_1_5 pos_15" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_5 pos_16" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_5 pos_17" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="stub_1_5 pos_18" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_5 pos_19" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_5 pos_20" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">H</td>
<td headers="stub_1_5 pos_21" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="stub_1_5 pos_22" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="stub_1_5 pos_23" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_5 pos_24" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="stub_1_5 pos_25" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="stub_1_5 pos_26" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="stub_1_5 pos_27" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="stub_1_5 pos_28" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_5 pos_29" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">G</td>
<td headers="stub_1_5 pos_30" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_5 pos_31" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="stub_1_5 pos_32" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="stub_1_5 pos_33" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="stub_1_5 pos_34" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">G</td>
<td headers="stub_1_5 pos_35" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="stub_1_5 pos_36" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_5 pos_37" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">A</td>
<td headers="stub_1_5 pos_38" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="stub_1_5 pos_39" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="stub_1_5 pos_40" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="stub_1_5 pos_41" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_5 pos_42" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="stub_1_5 pos_43" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="stub_1_5 pos_44" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_5 pos_45" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_5 pos_46" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_5 pos_47" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_5 pos_48" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_5 pos_49" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_5 pos_50" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_5 pos_51" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_5 pos_52" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_5 pos_53" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_5 pos_54" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_5 pos_55" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_5 pos_56" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_5 pos_57" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_5 pos_58" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_5 pos_59" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_5 pos_60" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="stub_1_5 pos_61" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="stub_1_5 pos_62" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">R</td>
<td headers="stub_1_5 pos_63" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_5 pos_64" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_5 pos_65" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_5 pos_66" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="stub_1_5 pos_67" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">A</td>
<td headers="stub_1_5 pos_68" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_5 pos_69" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_5 pos_70" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_5 pos_71" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_5 pos_72" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_5 pos_73" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="stub_1_5 pos_74" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_5 pos_75" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="stub_1_5 pos_76" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="stub_1_5 pos_77" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_5 pos_78" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_5 pos_79" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_5 pos_80" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_5 pos_81" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">G</td>
<td headers="stub_1_5 pos_82" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_5 pos_83" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_5 pos_84" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="stub_1_5 pos_85" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_5 pos_86" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_5 pos_87" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_5 pos_88" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_5 pos_89" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="stub_1_5 pos_90" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="stub_1_5 pos_91" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="stub_1_5 pos_92" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_5 pos_93" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="stub_1_5 pos_94" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="stub_1_5 pos_95" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td></tr>
    <tr><th id="stub_1_6" scope="row" class="gt_row gt_left gt_stub"></th>
<td headers="stub_1_6 group" class="gt_row gt_left">beta</td>
<td headers="stub_1_6 name" class="gt_row gt_left">MERS</td>
<td headers="stub_1_6 start" class="gt_row gt_right">1223</td>
<td headers="stub_1_6 pos_1" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_6 pos_2" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">G</td>
<td headers="stub_1_6 pos_3" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_6 pos_4" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="stub_1_6 pos_5" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="stub_1_6 pos_6" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">G</td>
<td headers="stub_1_6 pos_7" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="stub_1_6 pos_8" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="stub_1_6 pos_9" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="stub_1_6 pos_10" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="stub_1_6 pos_11" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="stub_1_6 pos_12" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_6 pos_13" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_6 pos_14" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="stub_1_6 pos_15" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_6 pos_16" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_6 pos_17" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="stub_1_6 pos_18" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_6 pos_19" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_6 pos_20" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="stub_1_6 pos_21" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="stub_1_6 pos_22" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="stub_1_6 pos_23" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_6 pos_24" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="stub_1_6 pos_25" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="stub_1_6 pos_26" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="stub_1_6 pos_27" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_6 pos_28" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="stub_1_6 pos_29" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">G</td>
<td headers="stub_1_6 pos_30" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_6 pos_31" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="stub_1_6 pos_32" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_6 pos_33" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="stub_1_6 pos_34" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="stub_1_6 pos_35" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="stub_1_6 pos_36" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_6 pos_37" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="stub_1_6 pos_38" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="stub_1_6 pos_39" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_6 pos_40" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_6 pos_41" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="stub_1_6 pos_42" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_6 pos_43" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="stub_1_6 pos_44" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_6 pos_45" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_6 pos_46" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_6 pos_47" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_6 pos_48" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_6 pos_49" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_6 pos_50" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_6 pos_51" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_6 pos_52" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_6 pos_53" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_6 pos_54" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_6 pos_55" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_6 pos_56" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_6 pos_57" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_6 pos_58" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_6 pos_59" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_6 pos_60" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">M</td>
<td headers="stub_1_6 pos_61" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_6 pos_62" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="stub_1_6 pos_63" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_6 pos_64" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="stub_1_6 pos_65" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="stub_1_6 pos_66" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="stub_1_6 pos_67" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="stub_1_6 pos_68" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_6 pos_69" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">A</td>
<td headers="stub_1_6 pos_70" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_6 pos_71" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_6 pos_72" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_6 pos_73" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="stub_1_6 pos_74" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_6 pos_75" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="stub_1_6 pos_76" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="stub_1_6 pos_77" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_6 pos_78" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_6 pos_79" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_6 pos_80" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_6 pos_81" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">G</td>
<td headers="stub_1_6 pos_82" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_6 pos_83" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_6 pos_84" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="stub_1_6 pos_85" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_6 pos_86" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_6 pos_87" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_6 pos_88" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_6 pos_89" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="stub_1_6 pos_90" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="stub_1_6 pos_91" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="stub_1_6 pos_92" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_6 pos_93" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="stub_1_6 pos_94" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="stub_1_6 pos_95" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td></tr>
    <tr><th id="stub_1_7" scope="row" class="gt_row gt_left gt_stub"></th>
<td headers="stub_1_7 group" class="gt_row gt_left">alpha</td>
<td headers="stub_1_7 name" class="gt_row gt_left">229E</td>
<td headers="stub_1_7 start" class="gt_row gt_right">1025</td>
<td headers="stub_1_7 pos_1" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="stub_1_7 pos_2" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="stub_1_7 pos_3" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="stub_1_7 pos_4" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="stub_1_7 pos_5" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_7 pos_6" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_7 pos_7" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="stub_1_7 pos_8" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="stub_1_7 pos_9" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="stub_1_7 pos_10" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_7 pos_11" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_7 pos_12" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="stub_1_7 pos_13" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_7 pos_14" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="stub_1_7 pos_15" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_7 pos_16" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_7 pos_17" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="stub_1_7 pos_18" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_7 pos_19" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_7 pos_20" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_7 pos_21" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="stub_1_7 pos_22" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_7 pos_23" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_7 pos_24" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="stub_1_7 pos_25" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="stub_1_7 pos_26" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="stub_1_7 pos_27" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="stub_1_7 pos_28" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_7 pos_29" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_7 pos_30" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_7 pos_31" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="stub_1_7 pos_32" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="stub_1_7 pos_33" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_7 pos_34" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="stub_1_7 pos_35" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_7 pos_36" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_7 pos_37" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="stub_1_7 pos_38" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="stub_1_7 pos_39" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="stub_1_7 pos_40" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_7 pos_41" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_7 pos_42" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_7 pos_43" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="stub_1_7 pos_44" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="stub_1_7 pos_45" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_7 pos_46" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="stub_1_7 pos_47" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="stub_1_7 pos_48" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="stub_1_7 pos_49" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_7 pos_50" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_7 pos_51" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_7 pos_52" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_7 pos_53" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="stub_1_7 pos_54" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">A</td>
<td headers="stub_1_7 pos_55" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_7 pos_56" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_7 pos_57" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_7 pos_58" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_7 pos_59" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="stub_1_7 pos_60" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="stub_1_7 pos_61" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="stub_1_7 pos_62" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_7 pos_63" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_7 pos_64" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="stub_1_7 pos_65" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="stub_1_7 pos_66" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_7 pos_67" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="stub_1_7 pos_68" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="stub_1_7 pos_69" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_7 pos_70" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="stub_1_7 pos_71" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_7 pos_72" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="stub_1_7 pos_73" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="stub_1_7 pos_74" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_7 pos_75" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="stub_1_7 pos_76" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="stub_1_7 pos_77" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_7 pos_78" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_7 pos_79" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="stub_1_7 pos_80" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_7 pos_81" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_7 pos_82" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">R</td>
<td headers="stub_1_7 pos_83" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="stub_1_7 pos_84" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_7 pos_85" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="stub_1_7 pos_86" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_7 pos_87" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="stub_1_7 pos_88" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_7 pos_89" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="stub_1_7 pos_90" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="stub_1_7 pos_91" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="stub_1_7 pos_92" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_7 pos_93" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="stub_1_7 pos_94" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="stub_1_7 pos_95" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td></tr>
    <tr><th id="stub_1_8" scope="row" class="gt_row gt_left gt_stub"></th>
<td headers="stub_1_8 group" class="gt_row gt_left">alpha</td>
<td headers="stub_1_8 name" class="gt_row gt_left">NL63</td>
<td headers="stub_1_8 start" class="gt_row gt_right">1208</td>
<td headers="stub_1_8 pos_1" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="stub_1_8 pos_2" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="stub_1_8 pos_3" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="stub_1_8 pos_4" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="stub_1_8 pos_5" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="stub_1_8 pos_6" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_8 pos_7" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="stub_1_8 pos_8" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="stub_1_8 pos_9" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="stub_1_8 pos_10" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_8 pos_11" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_8 pos_12" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="stub_1_8 pos_13" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_8 pos_14" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="stub_1_8 pos_15" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_8 pos_16" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="stub_1_8 pos_17" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">A</td>
<td headers="stub_1_8 pos_18" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="stub_1_8 pos_19" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_8 pos_20" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_8 pos_21" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="stub_1_8 pos_22" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_8 pos_23" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_8 pos_24" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="stub_1_8 pos_25" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_8 pos_26" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="stub_1_8 pos_27" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_8 pos_28" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="stub_1_8 pos_29" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_8 pos_30" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="stub_1_8 pos_31" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="stub_1_8 pos_32" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_8 pos_33" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="stub_1_8 pos_34" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="stub_1_8 pos_35" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="stub_1_8 pos_36" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_8 pos_37" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_8 pos_38" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="stub_1_8 pos_39" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_8 pos_40" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_8 pos_41" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_8 pos_42" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_8 pos_43" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="stub_1_8 pos_44" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="stub_1_8 pos_45" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_8 pos_46" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_8 pos_47" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_8 pos_48" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="stub_1_8 pos_49" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_8 pos_50" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_8 pos_51" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">A</td>
<td headers="stub_1_8 pos_52" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_8 pos_53" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="stub_1_8 pos_54" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">A</td>
<td headers="stub_1_8 pos_55" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="stub_1_8 pos_56" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_8 pos_57" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="stub_1_8 pos_58" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="stub_1_8 pos_59" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="stub_1_8 pos_60" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="stub_1_8 pos_61" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="stub_1_8 pos_62" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_8 pos_63" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_8 pos_64" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="stub_1_8 pos_65" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">G</td>
<td headers="stub_1_8 pos_66" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_8 pos_67" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="stub_1_8 pos_68" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="stub_1_8 pos_69" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="stub_1_8 pos_70" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="stub_1_8 pos_71" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_8 pos_72" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="stub_1_8 pos_73" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="stub_1_8 pos_74" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_8 pos_75" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="stub_1_8 pos_76" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="stub_1_8 pos_77" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_8 pos_78" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_8 pos_79" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_8 pos_80" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="stub_1_8 pos_81" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_8 pos_82" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">R</td>
<td headers="stub_1_8 pos_83" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="stub_1_8 pos_84" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="stub_1_8 pos_85" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="stub_1_8 pos_86" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_8 pos_87" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="stub_1_8 pos_88" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="stub_1_8 pos_89" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="stub_1_8 pos_90" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="stub_1_8 pos_91" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="stub_1_8 pos_92" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="stub_1_8 pos_93" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="stub_1_8 pos_94" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="stub_1_8 pos_95" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td></tr>
    <tr><th id="grand_summary_stub_1" scope="row" class="gt_row gt_left gt_stub gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">consensus</th>
<td headers="grand_summary_stub_1 group" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">—</td>
<td headers="grand_summary_stub_1 name" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">—</td>
<td headers="grand_summary_stub_1 start" class="gt_row gt_right gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">—</td>
<td headers="grand_summary_stub_1 pos_1" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.5</td>
<td headers="grand_summary_stub_1 pos_2" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.375</td>
<td headers="grand_summary_stub_1 pos_3" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.375</td>
<td headers="grand_summary_stub_1 pos_4" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.875</td>
<td headers="grand_summary_stub_1 pos_5" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.375</td>
<td headers="grand_summary_stub_1 pos_6" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.5</td>
<td headers="grand_summary_stub_1 pos_7" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.25</td>
<td headers="grand_summary_stub_1 pos_8" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.75</td>
<td headers="grand_summary_stub_1 pos_9" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.75</td>
<td headers="grand_summary_stub_1 pos_10" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.5</td>
<td headers="grand_summary_stub_1 pos_11" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.5</td>
<td headers="grand_summary_stub_1 pos_12" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.75</td>
<td headers="grand_summary_stub_1 pos_13" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">1</td>
<td headers="grand_summary_stub_1 pos_14" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.625</td>
<td headers="grand_summary_stub_1 pos_15" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.375</td>
<td headers="grand_summary_stub_1 pos_16" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.375</td>
<td headers="grand_summary_stub_1 pos_17" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.75</td>
<td headers="grand_summary_stub_1 pos_18" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.75</td>
<td headers="grand_summary_stub_1 pos_19" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.75</td>
<td headers="grand_summary_stub_1 pos_20" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.375</td>
<td headers="grand_summary_stub_1 pos_21" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.625</td>
<td headers="grand_summary_stub_1 pos_22" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.625</td>
<td headers="grand_summary_stub_1 pos_23" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.75</td>
<td headers="grand_summary_stub_1 pos_24" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.25</td>
<td headers="grand_summary_stub_1 pos_25" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.375</td>
<td headers="grand_summary_stub_1 pos_26" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.75</td>
<td headers="grand_summary_stub_1 pos_27" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.625</td>
<td headers="grand_summary_stub_1 pos_28" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.625</td>
<td headers="grand_summary_stub_1 pos_29" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.375</td>
<td headers="grand_summary_stub_1 pos_30" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.625</td>
<td headers="grand_summary_stub_1 pos_31" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.625</td>
<td headers="grand_summary_stub_1 pos_32" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.375</td>
<td headers="grand_summary_stub_1 pos_33" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.25</td>
<td headers="grand_summary_stub_1 pos_34" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.25</td>
<td headers="grand_summary_stub_1 pos_35" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.625</td>
<td headers="grand_summary_stub_1 pos_36" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">1</td>
<td headers="grand_summary_stub_1 pos_37" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.375</td>
<td headers="grand_summary_stub_1 pos_38" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.75</td>
<td headers="grand_summary_stub_1 pos_39" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.25</td>
<td headers="grand_summary_stub_1 pos_40" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.75</td>
<td headers="grand_summary_stub_1 pos_41" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.5</td>
<td headers="grand_summary_stub_1 pos_42" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.75</td>
<td headers="grand_summary_stub_1 pos_43" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.375</td>
<td headers="grand_summary_stub_1 pos_44" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.375</td>
<td headers="grand_summary_stub_1 pos_45" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.75</td>
<td headers="grand_summary_stub_1 pos_46" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.75</td>
<td headers="grand_summary_stub_1 pos_47" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.75</td>
<td headers="grand_summary_stub_1 pos_48" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.75</td>
<td headers="grand_summary_stub_1 pos_49" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.75</td>
<td headers="grand_summary_stub_1 pos_50" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.75</td>
<td headers="grand_summary_stub_1 pos_51" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.75</td>
<td headers="grand_summary_stub_1 pos_52" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.75</td>
<td headers="grand_summary_stub_1 pos_53" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.75</td>
<td headers="grand_summary_stub_1 pos_54" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.75</td>
<td headers="grand_summary_stub_1 pos_55" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.75</td>
<td headers="grand_summary_stub_1 pos_56" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.75</td>
<td headers="grand_summary_stub_1 pos_57" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.75</td>
<td headers="grand_summary_stub_1 pos_58" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.75</td>
<td headers="grand_summary_stub_1 pos_59" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.75</td>
<td headers="grand_summary_stub_1 pos_60" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.5</td>
<td headers="grand_summary_stub_1 pos_61" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.375</td>
<td headers="grand_summary_stub_1 pos_62" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.5</td>
<td headers="grand_summary_stub_1 pos_63" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.75</td>
<td headers="grand_summary_stub_1 pos_64" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.75</td>
<td headers="grand_summary_stub_1 pos_65" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.5</td>
<td headers="grand_summary_stub_1 pos_66" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.375</td>
<td headers="grand_summary_stub_1 pos_67" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.5</td>
<td headers="grand_summary_stub_1 pos_68" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.625</td>
<td headers="grand_summary_stub_1 pos_69" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.375</td>
<td headers="grand_summary_stub_1 pos_70" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.75</td>
<td headers="grand_summary_stub_1 pos_71" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">1</td>
<td headers="grand_summary_stub_1 pos_72" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.5</td>
<td headers="grand_summary_stub_1 pos_73" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.75</td>
<td headers="grand_summary_stub_1 pos_74" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.75</td>
<td headers="grand_summary_stub_1 pos_75" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.75</td>
<td headers="grand_summary_stub_1 pos_76" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.625</td>
<td headers="grand_summary_stub_1 pos_77" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">1</td>
<td headers="grand_summary_stub_1 pos_78" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.875</td>
<td headers="grand_summary_stub_1 pos_79" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.5</td>
<td headers="grand_summary_stub_1 pos_80" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.625</td>
<td headers="grand_summary_stub_1 pos_81" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.75</td>
<td headers="grand_summary_stub_1 pos_82" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.375</td>
<td headers="grand_summary_stub_1 pos_83" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.75</td>
<td headers="grand_summary_stub_1 pos_84" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.75</td>
<td headers="grand_summary_stub_1 pos_85" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.375</td>
<td headers="grand_summary_stub_1 pos_86" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">1</td>
<td headers="grand_summary_stub_1 pos_87" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.375</td>
<td headers="grand_summary_stub_1 pos_88" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">1</td>
<td headers="grand_summary_stub_1 pos_89" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">1</td>
<td headers="grand_summary_stub_1 pos_90" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">1</td>
<td headers="grand_summary_stub_1 pos_91" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">1</td>
<td headers="grand_summary_stub_1 pos_92" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">1</td>
<td headers="grand_summary_stub_1 pos_93" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.75</td>
<td headers="grand_summary_stub_1 pos_94" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">1</td>
<td headers="grand_summary_stub_1 pos_95" class="gt_row gt_left gt_grand_summary_row gt_first_grand_summary_row gt_last_summary_row">0.75</td></tr>
  </tbody>
  &#10;</table>
</div>

## `generate_breaks`

Takes a vector and returns every nth element, based on
`scales::breaks_width`

``` r
library(dplyr)
#> 
#> Attaching package: 'dplyr'
#> The following objects are masked from 'package:stats':
#> 
#>     filter, lag
#> The following objects are masked from 'package:base':
#> 
#>     intersect, setdiff, setequal, union
cnames <- msa |>
  split_sequences(seq_column = seq) |>
  select(contains('pos_')) |>
  colnames()
breaks <- generate_breaks(cnames)
breaks
#>  [1] "pos_5"  "pos_10" "pos_15" "pos_20" "pos_25" "pos_30" "pos_35" "pos_40"
#>  [9] "pos_45" "pos_50" "pos_55" "pos_60" "pos_65" "pos_70" "pos_75" "pos_80"
#> [17] "pos_85" "pos_90" "pos_95"
```

Which allows only applying a label to every nth position of the
sequences with `gt::cols_label_with`

``` r
msa |>
  split_sequences(seq_column = seq) |>
  gt() |>
  data_color(columns = contains('pos_'), fn = apply_color_to_aa('Chemistry')) |>
  cols_label_with(
    columns = contains('pos_'),
    fn = ~ ifelse(. %in% breaks, gsub('pos_', '', .), '')
  )
```

<div id="fwqanrioea" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#fwqanrioea table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
&#10;#fwqanrioea thead, #fwqanrioea tbody, #fwqanrioea tfoot, #fwqanrioea tr, #fwqanrioea td, #fwqanrioea th {
  border-style: none;
}
&#10;#fwqanrioea p {
  margin: 0;
  padding: 0;
}
&#10;#fwqanrioea .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}
&#10;#fwqanrioea .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}
&#10;#fwqanrioea .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}
&#10;#fwqanrioea .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}
&#10;#fwqanrioea .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#fwqanrioea .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#fwqanrioea .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#fwqanrioea .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}
&#10;#fwqanrioea .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}
&#10;#fwqanrioea .gt_column_spanner_outer:first-child {
  padding-left: 0;
}
&#10;#fwqanrioea .gt_column_spanner_outer:last-child {
  padding-right: 0;
}
&#10;#fwqanrioea .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}
&#10;#fwqanrioea .gt_spanner_row {
  border-bottom-style: hidden;
}
&#10;#fwqanrioea .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}
&#10;#fwqanrioea .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}
&#10;#fwqanrioea .gt_from_md > :first-child {
  margin-top: 0;
}
&#10;#fwqanrioea .gt_from_md > :last-child {
  margin-bottom: 0;
}
&#10;#fwqanrioea .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}
&#10;#fwqanrioea .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#fwqanrioea .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}
&#10;#fwqanrioea .gt_row_group_first td {
  border-top-width: 2px;
}
&#10;#fwqanrioea .gt_row_group_first th {
  border-top-width: 2px;
}
&#10;#fwqanrioea .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#fwqanrioea .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}
&#10;#fwqanrioea .gt_first_summary_row.thick {
  border-top-width: 2px;
}
&#10;#fwqanrioea .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#fwqanrioea .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#fwqanrioea .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}
&#10;#fwqanrioea .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}
&#10;#fwqanrioea .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}
&#10;#fwqanrioea .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#fwqanrioea .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#fwqanrioea .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#fwqanrioea .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#fwqanrioea .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#fwqanrioea .gt_left {
  text-align: left;
}
&#10;#fwqanrioea .gt_center {
  text-align: center;
}
&#10;#fwqanrioea .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}
&#10;#fwqanrioea .gt_font_normal {
  font-weight: normal;
}
&#10;#fwqanrioea .gt_font_bold {
  font-weight: bold;
}
&#10;#fwqanrioea .gt_font_italic {
  font-style: italic;
}
&#10;#fwqanrioea .gt_super {
  font-size: 65%;
}
&#10;#fwqanrioea .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}
&#10;#fwqanrioea .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}
&#10;#fwqanrioea .gt_indent_1 {
  text-indent: 5px;
}
&#10;#fwqanrioea .gt_indent_2 {
  text-indent: 10px;
}
&#10;#fwqanrioea .gt_indent_3 {
  text-indent: 15px;
}
&#10;#fwqanrioea .gt_indent_4 {
  text-indent: 20px;
}
&#10;#fwqanrioea .gt_indent_5 {
  text-indent: 25px;
}
&#10;#fwqanrioea .katex-display {
  display: inline-flex !important;
  margin-bottom: 0.75em !important;
}
&#10;#fwqanrioea div.Reactable > div.rt-table > div.rt-thead > div.rt-tr.rt-tr-group-header > div.rt-th-group:after {
  height: 0px !important;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="group">group</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="name">name</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="start">start</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_1"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_2"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_3"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_4"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_5">5</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_6"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_7"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_8"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_9"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_10">10</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_11"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_12"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_13"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_14"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_15">15</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_16"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_17"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_18"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_19"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_20">20</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_21"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_22"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_23"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_24"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_25">25</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_26"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_27"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_28"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_29"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_30">30</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_31"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_32"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_33"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_34"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_35">35</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_36"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_37"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_38"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_39"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_40">40</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_41"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_42"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_43"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_44"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_45">45</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_46"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_47"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_48"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_49"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_50">50</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_51"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_52"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_53"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_54"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_55">55</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_56"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_57"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_58"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_59"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_60">60</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_61"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_62"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_63"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_64"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_65">65</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_66"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_67"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_68"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_69"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_70">70</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_71"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_72"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_73"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_74"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_75">75</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_76"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_77"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_78"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_79"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_80">80</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_81"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_82"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_83"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_84"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_85">85</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_86"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_87"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_88"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_89"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_90">90</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_91"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_92"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_93"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_94"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="pos_95">95</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="group" class="gt_row gt_left">beta</td>
<td headers="name" class="gt_row gt_left">OC43</td>
<td headers="start" class="gt_row gt_right">1225</td>
<td headers="pos_1" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_2" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_3" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_4" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_5" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_6" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_7" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_8" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_9" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="pos_10" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_11" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_12" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_13" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_14" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_15" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_16" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_17" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="pos_18" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_19" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_20" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_21" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_22" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_23" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_24" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_25" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">A</td>
<td headers="pos_26" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_27" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_28" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_29" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_30" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_31" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_32" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_33" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_34" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_35" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_36" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_37" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_38" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_39" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="pos_40" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_41" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_42" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_43" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_44" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_45" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_46" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_47" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_48" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_49" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_50" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_51" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_52" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_53" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_54" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_55" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_56" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_57" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_58" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_59" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_60" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">M</td>
<td headers="pos_61" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_62" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">R</td>
<td headers="pos_63" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_64" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_65" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_66" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">A</td>
<td headers="pos_67" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_68" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_69" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_70" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_71" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_72" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_73" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_74" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_75" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_76" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_77" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_78" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_79" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_80" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_81" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">G</td>
<td headers="pos_82" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_83" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_84" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_85" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_86" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_87" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_88" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_89" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_90" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_91" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_92" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_93" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_94" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_95" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td></tr>
    <tr><td headers="group" class="gt_row gt_left">beta</td>
<td headers="name" class="gt_row gt_left">MHV</td>
<td headers="start" class="gt_row gt_right">1191</td>
<td headers="pos_1" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_2" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_3" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_4" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_5" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_6" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_7" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_8" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_9" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="pos_10" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_11" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_12" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_13" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_14" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_15" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_16" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_17" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="pos_18" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_19" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_20" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_21" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_22" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_23" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_24" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_25" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">A</td>
<td headers="pos_26" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_27" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_28" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_29" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_30" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_31" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_32" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="pos_33" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_34" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_35" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_36" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_37" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_38" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_39" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_40" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_41" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_42" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_43" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_44" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_45" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_46" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_47" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_48" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_49" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_50" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_51" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_52" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_53" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_54" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_55" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_56" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_57" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_58" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_59" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_60" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">M</td>
<td headers="pos_61" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_62" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">R</td>
<td headers="pos_63" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_64" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_65" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_66" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">A</td>
<td headers="pos_67" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_68" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_69" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_70" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_71" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_72" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_73" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_74" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_75" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_76" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_77" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_78" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_79" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_80" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_81" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">G</td>
<td headers="pos_82" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_83" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_84" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_85" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">M</td>
<td headers="pos_86" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_87" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_88" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_89" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_90" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_91" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_92" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_93" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_94" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_95" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td></tr>
    <tr><td headers="group" class="gt_row gt_left">beta</td>
<td headers="name" class="gt_row gt_left">HKU1</td>
<td headers="start" class="gt_row gt_right">1226</td>
<td headers="pos_1" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">H</td>
<td headers="pos_2" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_3" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_4" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_5" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_6" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_7" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_8" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_9" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="pos_10" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_11" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_12" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_13" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_14" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_15" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">H</td>
<td headers="pos_16" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_17" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="pos_18" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_19" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_20" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_21" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_22" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_23" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_24" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_25" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">A</td>
<td headers="pos_26" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_27" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_28" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_29" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_30" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_31" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_32" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_33" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">H</td>
<td headers="pos_34" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_35" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_36" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_37" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">A</td>
<td headers="pos_38" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_39" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="pos_40" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_41" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_42" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_43" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_44" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_45" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_46" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_47" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_48" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_49" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_50" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_51" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_52" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_53" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_54" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_55" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_56" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_57" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_58" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_59" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_60" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">M</td>
<td headers="pos_61" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_62" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_63" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_64" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_65" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_66" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_67" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_68" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_69" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_70" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_71" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_72" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_73" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_74" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_75" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_76" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_77" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_78" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_79" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_80" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_81" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">G</td>
<td headers="pos_82" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_83" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_84" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_85" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">M</td>
<td headers="pos_86" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_87" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_88" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_89" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_90" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_91" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_92" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_93" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_94" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_95" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td></tr>
    <tr><td headers="group" class="gt_row gt_left">beta</td>
<td headers="name" class="gt_row gt_left">SARS</td>
<td headers="start" class="gt_row gt_right">1122</td>
<td headers="pos_1" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_2" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_3" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_4" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_5" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_6" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_7" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_8" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_9" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="pos_10" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_11" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_12" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_13" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_14" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_15" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_16" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_17" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="pos_18" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_19" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_20" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">H</td>
<td headers="pos_21" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_22" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_23" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_24" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_25" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_26" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_27" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_28" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="pos_29" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">G</td>
<td headers="pos_30" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_31" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_32" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_33" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_34" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">G</td>
<td headers="pos_35" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_36" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_37" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">A</td>
<td headers="pos_38" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_39" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_40" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_41" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_42" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_43" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_44" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_45" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_46" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_47" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_48" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_49" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_50" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_51" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_52" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_53" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_54" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_55" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_56" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_57" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_58" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_59" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_60" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_61" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_62" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">R</td>
<td headers="pos_63" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_64" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_65" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_66" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_67" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">A</td>
<td headers="pos_68" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_69" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_70" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_71" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_72" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_73" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_74" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_75" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_76" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_77" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_78" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_79" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_80" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_81" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">G</td>
<td headers="pos_82" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_83" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_84" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_85" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_86" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_87" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_88" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_89" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_90" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_91" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_92" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_93" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_94" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_95" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td></tr>
    <tr><td headers="group" class="gt_row gt_left">beta</td>
<td headers="name" class="gt_row gt_left">SARS2</td>
<td headers="start" class="gt_row gt_right">1140</td>
<td headers="pos_1" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_2" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_3" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_4" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_5" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_6" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_7" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_8" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_9" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="pos_10" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_11" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_12" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_13" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_14" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_15" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_16" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_17" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="pos_18" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_19" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_20" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">H</td>
<td headers="pos_21" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_22" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_23" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_24" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_25" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_26" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_27" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_28" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_29" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">G</td>
<td headers="pos_30" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_31" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_32" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_33" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_34" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">G</td>
<td headers="pos_35" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_36" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_37" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">A</td>
<td headers="pos_38" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_39" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_40" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_41" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_42" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_43" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_44" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_45" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_46" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_47" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_48" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_49" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_50" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_51" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_52" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_53" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_54" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_55" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_56" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_57" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_58" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_59" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_60" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_61" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_62" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">R</td>
<td headers="pos_63" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_64" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_65" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_66" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_67" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">A</td>
<td headers="pos_68" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_69" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_70" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_71" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_72" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_73" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_74" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_75" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_76" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_77" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_78" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_79" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_80" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_81" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">G</td>
<td headers="pos_82" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_83" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_84" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_85" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_86" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_87" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_88" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_89" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_90" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_91" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_92" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_93" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_94" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_95" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td></tr>
    <tr><td headers="group" class="gt_row gt_left">beta</td>
<td headers="name" class="gt_row gt_left">MERS</td>
<td headers="start" class="gt_row gt_right">1223</td>
<td headers="pos_1" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_2" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">G</td>
<td headers="pos_3" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_4" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_5" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_6" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">G</td>
<td headers="pos_7" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_8" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_9" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="pos_10" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_11" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_12" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_13" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_14" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_15" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_16" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_17" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="pos_18" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_19" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_20" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_21" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_22" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_23" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_24" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_25" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_26" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_27" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_28" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="pos_29" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">G</td>
<td headers="pos_30" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_31" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_32" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_33" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_34" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_35" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_36" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_37" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_38" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_39" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_40" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_41" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_42" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_43" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_44" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_45" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_46" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_47" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_48" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_49" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_50" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_51" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_52" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_53" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_54" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_55" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_56" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_57" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_58" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_59" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_60" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">M</td>
<td headers="pos_61" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_62" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_63" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_64" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_65" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_66" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_67" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_68" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_69" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">A</td>
<td headers="pos_70" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_71" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_72" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_73" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_74" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_75" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_76" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_77" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_78" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_79" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_80" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_81" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">G</td>
<td headers="pos_82" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_83" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_84" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_85" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_86" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_87" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_88" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_89" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_90" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_91" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_92" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_93" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_94" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_95" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td></tr>
    <tr><td headers="group" class="gt_row gt_left">alpha</td>
<td headers="name" class="gt_row gt_left">229E</td>
<td headers="start" class="gt_row gt_right">1025</td>
<td headers="pos_1" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_2" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_3" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_4" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_5" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_6" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_7" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_8" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_9" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_10" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_11" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_12" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_13" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_14" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_15" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_16" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_17" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_18" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_19" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_20" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_21" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_22" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_23" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_24" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_25" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_26" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_27" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_28" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_29" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_30" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_31" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_32" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_33" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_34" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_35" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_36" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_37" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_38" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_39" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_40" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_41" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_42" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_43" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_44" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_45" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_46" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_47" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_48" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_49" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_50" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_51" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_52" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_53" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_54" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">A</td>
<td headers="pos_55" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_56" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_57" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_58" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_59" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_60" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_61" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_62" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_63" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_64" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_65" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_66" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_67" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_68" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_69" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_70" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_71" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_72" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_73" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_74" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_75" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_76" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_77" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_78" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_79" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_80" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_81" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_82" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">R</td>
<td headers="pos_83" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_84" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_85" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_86" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_87" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_88" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_89" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_90" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_91" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_92" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_93" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_94" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_95" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td></tr>
    <tr><td headers="group" class="gt_row gt_left">alpha</td>
<td headers="name" class="gt_row gt_left">NL63</td>
<td headers="start" class="gt_row gt_right">1208</td>
<td headers="pos_1" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_2" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_3" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_4" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_5" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_6" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_7" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_8" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_9" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_10" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_11" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_12" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_13" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_14" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_15" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_16" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="pos_17" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">A</td>
<td headers="pos_18" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_19" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_20" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_21" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_22" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_23" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_24" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_25" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_26" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_27" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_28" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="pos_29" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_30" class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">-</td>
<td headers="pos_31" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_32" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_33" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_34" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_35" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="pos_36" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_37" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_38" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_39" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_40" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_41" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_42" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_43" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_44" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_45" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_46" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_47" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_48" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_49" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_50" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_51" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">A</td>
<td headers="pos_52" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_53" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_54" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">A</td>
<td headers="pos_55" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_56" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_57" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="pos_58" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_59" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_60" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_61" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_62" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_63" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_64" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_65" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">G</td>
<td headers="pos_66" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_67" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_68" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_69" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">Q</td>
<td headers="pos_70" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_71" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_72" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">S</td>
<td headers="pos_73" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">T</td>
<td headers="pos_74" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_75" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_76" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">D</td>
<td headers="pos_77" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_78" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_79" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_80" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">L</td>
<td headers="pos_81" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_82" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">R</td>
<td headers="pos_83" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">F</td>
<td headers="pos_84" class="gt_row gt_left" style="background-color: #FF6D6D; color: #FFFFFF;">E</td>
<td headers="pos_85" class="gt_row gt_left" style="background-color: #74CE98; color: #000000;">N</td>
<td headers="pos_86" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_87" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">I</td>
<td headers="pos_88" class="gt_row gt_left" style="background-color: #769DCC; color: #FFFFFF;">K</td>
<td headers="pos_89" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_90" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">P</td>
<td headers="pos_91" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_92" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">Y</td>
<td headers="pos_93" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td>
<td headers="pos_94" class="gt_row gt_left" style="background-color: #FFFF66; color: #000000;">W</td>
<td headers="pos_95" class="gt_row gt_left" style="background-color: #F2BE3C; color: #000000;">V</td></tr>
  </tbody>
  &#10;</table>
</div>
