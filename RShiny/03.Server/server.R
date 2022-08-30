library(shiny)

shinyServer(
  
  function(input, output) {
    
    output$mynames <- renderText({
  
      input$name
    })
    
    output$myage <- renderText({
      input$age
    })
    
  }
)