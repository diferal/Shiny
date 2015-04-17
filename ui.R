library(shiny)

shinyUI(pageWithSidebar(
  headerPanel('Currency converter'),
  sidebarPanel(
    selectInput(inputId = 'currency', label = 'Currency', choices = c('EUR' = 1, 'USD' = 2, 'RUB' = 3, 'JPY' = 4, 'CNY' = 5)),
    textInput(inputId = 'amount', label = 'Amount')
  ),
  mainPanel(
    tabsetPanel(
      tabPanel("Covertion",
        h3('Equivalent amount in principal currencies'),
        textOutput('euro'),
        textOutput('dollar'),
        textOutput('ruble'),
        textOutput('yen'),
        textOutput('yuan')
      ),
      tabPanel("Documentation", 
        p('This program allows convertion between 5 principal currencies: Euro (EUR), US Dollar (USD), 
          Russian Ruble (RUB),  Japanese Yen (JPY) and Chinese Yuan (CNY). Exchange rate is the one as from
          April 17. After selecting currency and entering amount in left panel, right panel will show 
          correspondent equivalent amount in all 5 principal currencies.')       
      )
    )
  )
))