library(shiny)
ui <- fluidPage(
  textInput("name", "What's your name?"),
  passwordInput("password", "What's your password?"),
  textAreaInput("story", "Tell me about yourself", rows = 3)
)
server <- function(input, output, session) {
}
shinyApp(ui, server)