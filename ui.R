library(shiny);

shinyUI(fluidPage(theme = "bootstrap.css",#get more bootstrap themes from http://bootswatch.com/
                  # Set the page title
                  titlePanel("Data Science Capstone - SwiftKey Predictor Using Back-Off Good-Turing"),
  
  sidebarPanel(
    textInput("text",label = h3("Input the sentence"), value = "hello how are"),
    sliderInput("predictions", "Numbers of Predicted words:",
                min = 1, max = 8, value = 1, step = 1),
    submitButton('Submit')

  ),
  mainPanel(
    tabsetPanel (
      tabPanel('One word prediction',
               dataTableOutput("word1")),
      tabPanel('Two words prediction',
               dataTableOutput("word2"))
    )
  )
))
