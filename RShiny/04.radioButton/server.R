library(shiny)

shinyServer(
  
  function(input, output) {
    
    output$myname <- renderText({
 
      input$name
    })
    
    output$myage <- renderText({
 
      input$age
    })
    
    output$mygender <- renderText({
       
      input$gender
    })
    
  }
)