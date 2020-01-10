# Module UI
  
#' @title   mod_mod1_ui and mod_mod1_server
#' @description  A shiny Module.
#'
#' @param id shiny id
#' @param input internal
#' @param output internal
#' @param session internal
#'
#' @rdname mod_mod1
#'
#' @keywords internal
#' @export 
#' @importFrom shiny NS tagList 
mod_mod1_ui <- function(id){
  ns <- NS(id)
  tagList(
    DT::DTOutput(ns("tbl1"))
  )
}
    
# Module Server
    
#' @rdname mod_mod1
#' @export
#' @keywords internal
    
mod_mod1_server <- function(input, output, session, r){
  ns <- session$ns
  output$tbl1 <- DT::renderDT({
    r$dataset[r$dataset$cyl %in% r$filter$cyl,]
  })
}
    
## To be copied in the UI
# mod_mod1_ui("mod1_ui_1")
    
## To be copied in the server
# callModule(mod_mod1_server, "mod1_ui_1")
 
