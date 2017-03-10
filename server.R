library(shiny)

shinyServer(function(input, output) {

  output$time <- renderText({
  
    inFile <- input$rscript
    
    if (is.null(inFile))
      return(NULL)
    
    elapsed <- system.time(source(inFile$datapath))[3]
    
    paste0("your code took ", round(elapsed, 4), " seconds to run ...")
    
  })

})
