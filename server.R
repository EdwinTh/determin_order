function(input, output, sessions) {
  
  member_order <- eventReactive(input$randomise, {
    paste0(sample(input$members), collapse = "\n")
  })
  
  output$value <- renderText({member_order()})
}
