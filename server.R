shinyServer(function(input, output) {
  
  output$main_plot <- renderPlot({
    
    hist(morley$Speed,
         probability = TRUE,
         labels = TRUE,
         breaks = as.numeric(input$n_breaks),
         xlab = "Speed (km/sec, with 299000 subtracted)",
         main = "speed of light ")
    
    if (input$individual_obs) {
      rug(morley$Speed)
    }
    
    if (input$density) {
      dens <- density(morley$Speed,
                      adjust = input$bw_adjust)
      lines(dens, col = "red")
    }
    
  })
})