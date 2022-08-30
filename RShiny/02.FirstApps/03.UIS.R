library(shiny)
 
ui<-shinyUI(fluidPage( 
  titlePanel(title = "Hello Shiny, this is title panel")
)
)
server <- function(input, output, session) {
}
shinyApp(ui, server)