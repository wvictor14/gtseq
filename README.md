
# gtseq

<!-- badges: start -->

[![R-CMD-check](https://github.com/wvictor14/gtseq/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/wvictor14/gtseq/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

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
biological sequences.

Use `gtseq` on a `data.frame` with a column containing amino acid
sequences:

``` r
library(gtseq)

msa |> gtseq(seq_column = seq)
```

For further customization use the lower-level functions:

- `split_sequences` for structuring the data for `gt`
- `apply_color_to_aa` for coloring amino acids by one of the included
  palettes
- `get_consensus` for adding consensus sequence and frequency data
