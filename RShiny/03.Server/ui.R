# Load the shiny package
library(shiny)
# Define UI for the shiny application here
shinyUI(fluidPage(
  # fluid pages scale their components in realtime to fill all available browser width.
  # Header Panel : Create a header panel containing an application title.
  headerPanel(title = "Demostration of textInput() widget"),
  # SidebarLayout():It creates a layout with a sidebar and main area. 
  sidebarLayout(
    # Sidebar panel
    sidebarPanel(
      h4("Enter the personal details"),
      
      textInput("name", "Enter your name", ""),
      textInput("age", "Enter your age", "")
      
    ),
    # Main Panel
    mainPanel(
      h4("Personal Information"),
      
      textOutput("mynames"),
      textOutput("myage")
      
      
      
      
    )
  )
)
)