
<!-- README.md is generated from README.Rmd. Please edit that file -->

# dsci310.assign5

<!-- badges: start -->
<!-- badges: end -->

The goal of dsci310.assign5 is to follow along the toy demo in
[jennybc/regexcite](https://github.com/jennybc/regexcite). This package
makes regular expressions more exciting. It provides convenience
functions to make some common string manupulation tasks easier.

## Installation

You can install the development version of dsci310.assign5 from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("samnthorne/dsci-310-assign5")
```

## Example

This is a basic example which shows you how to solve the common problem
of splitting strings into character vectors:

``` r
library(dsci310.assign5)

(x <- "i,am,beautiful")
#> [1] "i,am,beautiful"
str_split_one(x, pattern = ",")
#> [1] "i"         "am"        "beautiful"
```

Use `str_split_one()` when the input is known to be a single string. For
safety, it will error if its input has length greater than one.

`str_split_one()` is built on `stringr::str_split()`, so you can use its
`n` argument and stringr’s general interface for describing the
`pattern` to be matched.

``` r
str_split_one(x, pattern = ",", n = 2)
#> [1] "i"            "am,beautiful"

y <- "192.168.0.1"
str_split_one(y, pattern = stringr::fixed("."))
#> [1] "192" "168" "0"   "1"
```
