#' <Add Title>
#'
#' <Add Description>
#'
#' @import htmlwidgets
#'
#' @export
igvBrowser <- function(genome, tracks, width = 1, height = 1) {

  # forward options using x
  x = list(
    genome = genome
    tracks = tracks
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'igvBrowser',
    x,
    width = width,
    height = height,
    package = 'igvR'
  )
}

#' Shiny bindings for igvBrowser
#'
#' Output and render functions for using igvBrowser within Shiny
#' applications and interactive Rmd documents.
#'
#' @param outputId output variable to read from
#' @param width,height Must be a valid CSS unit (like \code{'100\%'},
#'   \code{'400px'}, \code{'auto'}) or a number, which will be coerced to a
#'   string and have \code{'px'} appended.
#' @param expr An expression that generates a igvBrowser
#' @param env The environment in which to evaluate \code{expr}.
#' @param quoted Is \code{expr} a quoted expression (with \code{quote()})? This
#'   is useful if you want to save an expression in a variable.
#'
#' @name igvBrowser-shiny
#'
#' @export
igvBrowserOutput <- function(outputId, width = '100%', height = '400px'){
  htmlwidgets::shinyWidgetOutput(outputId, 'igvBrowser', width, height, package = 'igvR')
}

#' @rdname igvBrowser-shiny
#' @export
renderIgvBrowser <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  htmlwidgets::shinyRenderWidget(expr, igvBrowserOutput, env, quoted = TRUE)
}

