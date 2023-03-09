#' Geneseng report template
#' 
#' @param ... nothing
#'
#' @export
geneseng_template <- function(...) {
  
  # Template
  main_css <- system.file("resources", "css/style_geneseng.css", package = "genesengReport", mustWork = TRUE)
  pandoc_html <-   system.file("resources", "html/template_paged.html", package = "genesengReport", mustWork = TRUE)
  

  # Default images
  front_img <- system.file("resources", "img/color-img.jpg", package = "genesengReport", mustWork = TRUE)
  back_img <- system.file("resources", "img/color-img.jpg", package = "genesengReport", mustWork = TRUE)
  logo <- system.file("resources", "logo/geneseng-logo-white.svg", package = "genesengReport", mustWork = TRUE)

  # template
  pagedown::html_paged(
    css = main_css,
    template = pandoc_html,
    front_cover = c(logo, front_img),
    back_cover = c(logo, back_img),
    toc = TRUE,
    toc_depth = 2,
    ...
  )

}
