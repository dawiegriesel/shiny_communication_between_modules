#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)


# Define server logic required to draw a histogram
shinyServer(function(input, output, session) {
    
    r <- reactiveValues()
    
    r$dataset <- mtcars
    
    callModule(mod_mod1_server, "mod1_ui_1", session = session, r = r)
    
    callModule(mod_mod2_server, "mod2_ui_1", session = session, r = r)


})
