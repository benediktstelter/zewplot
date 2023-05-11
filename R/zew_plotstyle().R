#' Use zew style for plots
#'
#' @description This function implements zew plottheme, which creates a fancy and uniform look.
#' @keywords zew_plotstyle
#' @export
#' @examples
#' line <- ggplot(line_df, aes(x = year, y = lifeExp)) +
#' geom_line(colour = "#007f7f", size = 1) +
#' geom_hline(yintercept = 0, size = 1, colour="#333333") +
#' zew_plotstyle()

zew_plotstyle <- function(font = "", font_size = "12", flipped = FALSE) {

  if (flipped == FALSE) {
  ggplot2::theme(
    text=element_text(family = font),
    plot.title = element_text(face = "bold", size = font_size, colour = "black"),
    legend.background = element_rect(fill = "white", size = 4, colour = "white"),
    legend.position = "bottom",
    legend.title = element_text(family = font, colour = "black", size = font_size),
    legend.text = element_text(family = font, colour = "black", size = font_size),
    legend.key = element_rect(fill = "white"),
    axis.title.y = element_text(family = font, colour = "black", size = font_size),
    axis.ticks.y = element_blank(),
    axis.ticks.x = element_line(colour = "black", size = 0.5),
    axis.text = element_text(family = font, colour = "black", size= font_size),
    axis.line.x = element_line(colour = "black", size = 0.5),
    panel.grid.major.y = element_line(colour = "grey70", size = 0.2, linetype = 3),
    panel.grid.major.x = element_blank(),
    panel.grid.minor = element_blank(),
    plot.subtitle = ggplot2::element_text(size = font_size, colour = "black", margin=ggplot2::margin(3,0,9,0)),
    panel.background = element_rect(fill = "white"),
    axis.title.x = element_text(family = font, colour = "black", size = font_size),
    plot.title.position = "plot"
  )
} else {
  ggplot2::theme(
    text=element_text(family = font),
    plot.title = element_text(face = "bold", size = font_size, colour = "black"),
    legend.background = element_rect(fill = "white", size = 4, colour = "white"),
    legend.position = "bottom",
    legend.title = element_text(family = font, colour = "black", size = font_size),
    legend.text = element_text(family = font, colour = "black", size = font_size),
    legend.key = element_rect(fill = "white"),
    axis.title.y = element_text(family = font, colour = "black", size = font_size),
    axis.ticks.y = element_line(colour = "black", size = 0.5),
    axis.ticks.x = element_blank(),
    axis.text = element_text(family = font, colour = "black", size= font_size),
    axis.line.y = element_line(colour = "black", size = 0.5),
    panel.grid.major.y = element_blank(),
    panel.grid.major.x = element_line(colour = "grey70", size = 0.2, linetype = 3),
    panel.grid.minor = element_blank(),
    plot.subtitle = ggplot2::element_text(size = font_size, colour = "black", margin=ggplot2::margin(3,0,9,0)),
    panel.background = element_rect(fill = "white"),
    axis.title.x = element_text(family = font, colour = "black", size = font_size),
    plot.title.position = "plot"
  )}
}
