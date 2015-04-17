library(shiny)
exchange_rate = matrix(c(1, 1.08, 56.85, 128.29, 6.68,
                      0.93, 1, 52.66, 118.99, 6.20,
                      0.018, 0.019, 1, 2.26, 0.12,
                      0.0078, 0.0084, 0.44, 1, 0.052,
                      0.15, 0.16, 8.50, 19.19, 1), nrow = 5, byrow = TRUE)

shinyServer(function(input, output) {
  
  rate <- reactive({exchange_rate[as.numeric(input$currency),]*as.numeric(input$amount)})
  
  output$euro <- renderText({paste('EUR', rate()[1])})
  output$dollar <- renderText({paste('USD', rate()[2])})
  output$ruble <- renderText({paste('RUB', rate()[3])})
  output$yen <- renderText({paste('JPY', rate()[4])})
  output$yuan <- renderText({paste('CNY', rate()[5])})
  
})