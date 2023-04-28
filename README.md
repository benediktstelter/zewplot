
<!-- README.md is generated from README.Rmd. Please edit that file -->

# zewplot

<!-- badges: start -->
<!-- badges: end -->

The package `zewplot` implements the function `zew_plotstyle()`

## Installation

It is necessary to install the `devtools` package. Then, `zewplot` can
be installed from GitHub:

``` r
install.packages('devtools')
library(devtools)
install_github('benediktstelter/zewplot')
```

## Example

``` r
library(tidyverse)
library(zewplot)
# Data preparation
df <- economics %>%
  select(date, psavert, uempmed) %>%
  gather(key = "variable", value = "value", -date)
#Plotting using zew_plotstyle
example_plot <- ggplot(df, aes(x = date, y = value)) + 
  geom_line(aes(color = variable), size = 1) +
  scale_color_manual(values = c("#b4be28", "#527ca4")) +
  zew_plotstyle()
```

<img src="man/figures/README-unnamed-chunk-2-1.png" width="100%" />
