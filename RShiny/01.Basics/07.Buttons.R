library(shiny)
animals <- c("dog", "cat", "mouse", "bird", "other", "I hate animals")

ui <- fluidPage(
  ui <- fluidPage(
    checkboxGroupInput("animal", "What animals do you like?", animals)
  ),
  ui <- fluidPage(
    actionButton("click", "Click me!"),
    actionButton("drink", "Drink me!", icon = icon("cocktail"))
  ),
  
  selectInput(
    "state", "What's your favourite state?", state.name,
    multiple = TRUE
  ),
  radioButtons("rb", "Choose one:",
               choiceNames = list(
                 icon("angry"),
                 icon("smile"),
                 icon("sad-tear")
               ),
               choiceValues = list("angry", "happy", "sad")
  )
)


server <- function(input, output, session) {
}
shinyApp(ui, server)