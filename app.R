library("shiny")
library("ggplot2")
source("funs.R")

ui <- fluidPage(
  fluidRow(
    column(6, 
      "Lek A",
      sliderInput("nA", label = "n", value = 100, min = 1, max = 1000),
      numericInput("mA", label = "srednia", value = 0, step = 0.1),
      numericInput("sdA", label = "odchylenie", value = 1, min = 0.1, step = 0.1)
    ),
    column(6, 
      "Lek B",
      sliderInput("nB", label = "n", value = 100, min = 1, max = 1000),
      numericInput("mB", label = "srednia", value = 0, step = 0.1),
      numericInput("sdB", label = "odchylenie", value = 1, min = 0.1, step = 0.1)
    ),
  ),
  fluidRow(
    column(9, plotOutput("dens")),
    column(3, verbatimTextOutput("test"))
  )
)

server <- function(input, output, session) {
  lekA <- reactive(rnorm(input$nA, input$mA, input$sdA))
  lekB <- reactive(rnorm(input$nB, input$mB, input$sdB))
  output$dens <- renderPlot(wykres(lekA(), lekB()))
  output$test <- renderPrint(test(lekA(), lekB()))
}

shinyApp(ui, server)
