#' Generate report for regression
#'
#' @param output_path output path
#' @param filename name of file
#' @param timeout The number of seconds before canceling the document generation. Use a larger value if the document takes longer to build.
#' @param ... named parameters
#'   
#' @importFrom pagedown chrome_print
#' @importFrom rmarkdown render
#' 
#' @export
geneseng_reg_report <- function(output_path, filename, timeout = 60, ...) {
  
  path <- "rmarkdown/templates/skeleton"
  
  chrome_print(
    render(
      input = system.file(file.path(path, "skeleton3.Rmd"), package = "genesengReport"),
      output_format = "genesengReport::geneseng_template",
      output_file = file.path(output_path, paste0(filename, ".html")),
      params = list(...),
      envir = new.env(parent = globalenv())
    ),
    output = file.path(output_path, paste0(filename, ".pdf")),
    extra_args = c("--no-sandbox"),
    timeout = timeout
  )
  
}
