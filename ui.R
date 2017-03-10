
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  titlePanel("time it"),

  sidebarLayout(
    sidebarPanel(
      
      fileInput("rscript", "Upload R Script", accept = c(".R", ".r"))

    ),

    mainPanel(
      h3(textOutput("time"))
    )
  )
))
