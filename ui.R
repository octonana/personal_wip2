library(shiny)
library(shinydashboard)
library(dplyr)
library(readr)
library(lazyeval)
library(DT)
library(ggplot2)
library(plotly)
library(reshape2)


dashboardPage(
  dashboardHeader(title = "title"),
  
  # Sidebar
  dashboardSidebar(
    uiOutput("selected_grp")
  ),
  # Main Panel
  dashboardBody(
    fluidPage(
      box(
        status = "primary",
        width = 12,
        solidHeader = TRUE,
        collapsed = FALSE,
        tabsetPanel(
          tabPanel("First",
                   br(),
                   box(status = "primary",
                       width = 12,
                       solidHeader = TRUE,
                       collapsed = FALSE,
                       uiOutput("selected_groupbyvar")
                   )
                   
          )
          
          
        )
      )
    )
  )
)