shinyUI(bootstrapPage(
  
  titlePanel("Igor's Shiny App"),
  
  p("This app reads data from Michelson Speed of Light Data(source: https://stat.ethz.ch/R-manual/R-patched/library/datasets/html/morley.html)
    and creates a histogram of the speed of light data. User is able to select number of bins after which the histogram view is updated.
    User can select to view individual observations and to see density estimates. Furthermore, the user can adjust the bandwith of the density estimates."),
  
  selectInput(inputId = "n_breaks",
              label = "Number of bins in histogram (approximate):",
              choices = c(5, 10, 20, 30),
              selected = 20),
  
  checkboxInput(inputId = "individual_obs",
                label = strong("Show individual observations"),
                value = FALSE),
  
  checkboxInput(inputId = "density",
                label = strong("Show density estimate"),
                value = FALSE),
  
  plotOutput(outputId = "main_plot", height = "400px"),
  
  # Display this only if the density is shown
  conditionalPanel(condition = "input.density == true",
                   sliderInput(inputId = "bw_adjust",
                               label = "Bandwidth adjustment:",
                               min = 0.2, max = 2, value = 1, step = 0.2)
  )
  
))