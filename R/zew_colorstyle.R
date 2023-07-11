# Source: https://drsimonj.svbtle.com/creating-corporate-colour-palettes-for-ggplot2


# ZEW colors
zew_colors <- c(
  `green`      = "#d1d701",
  `light blue` = "#bfe2e6",
  `red`        = "#9c2424",
  `dark blue`  = "#527ca4",
  `brown`      = "#958c47",
  `yellow`     = "#c7a92f"
)

#' Function to extract ZEW colors as hex codes
#'
#' @param ... Character names of zew_colors
#'
zew_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (zew_colors)

  zew_colors[cols]
}


zew_palettes <- list(
  `two`    = zew_cols("green", "light blue"),

  `three`  = zew_cols("green", "light blue", "red"),

  `four`   = zew_cols("green", "light blue", "red", "dark blue"),

  `five`   = zew_cols("green", "light blue", "red", "dark blue", "yellow"),

  `six`    = zew_cols("green", "light blue", "red", "dark blue", "yellow", "brown")
)


#' Return function to interpolate a zew color palette
#'
#' @param palette Character name of palette in zew_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments to pass to colorRampPalette()
#'
zew_pal <- function(palette = "main", reverse = FALSE, ...) {
  pal <- zew_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)
}

#' Color scale constructor for zew colors
#'
#' @param palette Character name of palette in zew_palettes
#' @param discrete Boolean indicating whether color aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to discrete_scale() or
#'            scale_color_gradient(), used respectively when discrete is TRUE or FALSE
#'
scale_color_zew <- function(palette = "two", discrete = TRUE, reverse = FALSE, ...) {
  pal <- zew_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("colour", paste0("zew_", palette), palette = pal, ...)
  } else {
    scale_color_gradientn(colours = pal(256), ...)
  }
}

#' Fill scale constructor for drsimonj colors
#'
#' @param palette Character name of palette in drsimonj_palettes
#' @param discrete Boolean indicating whether color aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to discrete_scale() or
#'            scale_fill_gradientn(), used respectively when discrete is TRUE or FALSE
#'
scale_fill_zew <- function(palette = "two", discrete = TRUE, reverse = FALSE, ...) {
  pal <- zew_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("fill", paste0("zew_", palette), palette = pal, ...)
  } else {
    scale_fill_gradientn(colours = pal(256), ...)
  }
}
