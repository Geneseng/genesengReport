
<!-- README.md is generated from README.Rmd. Please edit that file -->

# genesengReport <a href=#><img src='inst/logo.png' align="right" height="139" /></a>

> Pagedown template for generating a Geneseng report

`{genesengReport}` is a dependency of Geneseng’s core to generate
customized pdf reports.

## Installation

The latest version can be installed from GitHub as follows:

``` r
install.packages("devtools")
devtools::install_github("geneseng/genesengReport")
```

## Example

``` r
genesengReport::geneseng_multi_class_report(
  dataset = iris,
  target  = "Species",
  title = "Title/of/the/report",
  output_path = "/path/to/file",
  filename = "name/of/file"
)
```

## Bugs

- `pagedown::chrome_print()` doesn’t work for large report in linux
  environment (ubuntu 20.4, debian 10).
