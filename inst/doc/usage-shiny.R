## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  eval = FALSE
)

## -----------------------------------------------------------------------------
#  library(equatiomatic)
#  library(shiny)
#  library(shinyWidgets)
#  library(gtsummary)
#  library(gt)
#  
#  ui <- fluidPage(
#    titlePanel("equatiomatic w/Shiny"),
#    sidebarLayout(
#      sidebarPanel(
#        multiInput(
#          inputId = "xvars", label = "Select predictor variables :",
#          choices = names(penguins)[-3],
#          selected = "island"
#        )
#      ),
#      mainPanel(
#        gt_output("tbl")
#      )
#    )
#  )
#  
#  server <- function(input, output) {
#    model <- reactive({
#      form <- paste("bill_length_mm ~ ", paste(input$xvars, collapse = " + "))
#      lm(as.formula(form), penguins)
#    })
#  
#    output$tbl <- render_gt({
#      as_gt(tbl_regression(model()))
#    })
#  
#  }
#  
#  shinyApp(ui = ui, server = server)

## -----------------------------------------------------------------------------
#  library(equatiomatic)
#  library(shiny)
#  library(shinyWidgets)
#  library(gtsummary)
#  library(gt)
#  
#  ui <- fluidPage(
#    titlePanel("equatiomatic w/Shiny"),
#    withMathJax(), # Initialize mathJax so the equation renders properly
#    sidebarLayout(
#      sidebarPanel(
#        multiInput(
#          inputId = "xvars", label = "Select predictor variables :",
#          choices = names(penguins)[-3],
#          selected = "island"
#        )
#      ),
#      mainPanel(
#        eqOutput("equation"),
#        gt_output("tbl")
#      )
#    )
#  )
#  
#  server <- function(input, output) {
#    model <- reactive({
#      form <- paste("bill_length_mm ~ ", paste(input$xvars, collapse = " + "))
#      lm(as.formula(form), penguins)
#    })
#  
#    output$equation <- renderEq(
#      extract_eq(model())
#    )
#  
#    output$tbl <- render_gt({
#      as_gt(tbl_regression(model()))
#    })
#  
#  }
#  
#  shinyApp(ui = ui, server = server)

## -----------------------------------------------------------------------------
#  library(equatiomatic)
#  library(shiny)
#  library(shinyWidgets)
#  library(gtsummary)
#  library(gt)
#  
#  ui <- fluidPage(
#    titlePanel("equatiomatic w/Shiny"),
#    withMathJax(),
#    sidebarLayout(
#      sidebarPanel(
#        multiInput(
#          inputId = "xvars",
#          label = "Select predictor variables :",
#          choices = names(penguins)[-3],
#          selected = "island"
#        )
#      ),
#      mainPanel(
#        eqOutput("eq2"),
#        eqOutput("equation"),
#        gt_output("tbl")
#      )
#    )
#  )
#  
#  server <- function(input, output) {
#    model <- reactive({
#      form <- paste("bill_length_mm ~ ", paste(input$xvars, collapse = " + "))
#      lm(as.formula(form), penguins)
#    })
#  
#    output$equation <- renderEq(
#        extract_eq(
#          model(),
#          wrap = TRUE,
#          terms_per_line = 2,
#          use_coefs = TRUE,
#          font_size = "Huge"
#      )
#    )
#  
#    output$tbl <- render_gt({
#      as_gt(tbl_regression(model()))
#    })
#  
#  }
#  
#  shinyApp(ui = ui, server = server)

