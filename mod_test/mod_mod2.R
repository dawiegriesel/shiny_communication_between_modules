# Module UI
  
#' @title   mod_mod2_ui and mod_mod2_server
#' @description  A shiny Module.
#'
#' @param id shiny id
#' @param input internal
#' @param output internal
#' @param session internal
#'
#' @rdname mod_mod2
#'
#' @keywords internal
#' @export 
#' @importFrom shiny NS tagList 
mod_mod2_ui <- function(id){
  ns <- NS(id)
  tagList(
    selectInput(ns("cyl"), 
                "Select Cyl",
                choices = NULL,
                multiple = TRUE)
  )
}
    
# Module Server
    
#' @rdname mod_mod2
#' @export
#' @keywords internal
    
mod_mod2_server <- function(input, output, session, r){
  ns <- session$ns
  
  observe({
    updateSelectInput(session = session, "cyl", choices = unique(r$dataset$cyl))
  })
  
  observe({
    r$filter$cyl <- input$cyl
  })
}
    
## To be copied in the UI
# mod_mod2_ui("mod2_ui_1")
    
## To be copied in the server
# callModule(mod_mod2_server, "mod2_ui_1")
 
