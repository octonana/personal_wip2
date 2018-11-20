

shinyServer(function(input, output, session) {
  
  dt <- reactive({
    
    dt <-  readRDS("table.rds")
    
  })
  
  dt_filter <- reactive({
    
    dt <- dt() 
    

    
    if(!is.null(input$placeholder)) {
      dt <- dt %>% 

    }
    

    }
    
    dt
    
    
  })
  

  
  output$selected_grp <- renderUI({
    
    grp_choice <- dt()$var_name %>% unique
    
    selectizeInput("selected_grp",
                   "Choose Group",
                   selected = c("Preselected"),
                   choices = grp_choice,
                   multiple = TRUE
    )
  })
 
  
  output$summarized_table <- DT::renderDataTable({
    
    tmp <- dt_filter() %>%
      (function(x){
        group_by_(x, .dots = lapply(input$selected_groupbyvar, as.symbol)) %>%
          summarize(
  })

  session$onSessionEnded(function() {
    stopApp(NULL)
  })
})