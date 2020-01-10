#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
source("mod_mod1.R")
source("mod_mod2.R")

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Communication between Modules"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            mod_mod2_ui("mod2_ui_1")
        ),

        # Show a plot of the generated distribution
        mainPanel(
            mod_mod1_ui("mod1_ui_1")
            
        )
    )
))
