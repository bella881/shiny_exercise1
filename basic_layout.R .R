# Simple shiny app
library(shiny)
# Define UI ----
wfarm <- base64enc::dataURI(file="www/UKwindfarm.png", mime="image/png")
ui <- fluidPage(titlePanel("title panel"),
                sidebarLayout(
                  sidebarPanel("sidebar panel"),
                  mainPanel("main panel",    
                  h1("This is the main heading for my app"),
                  h2("here is a subheading"),
                  img(src=wfarm),
                  p("This website will be to help planners assess potential windfarm
           development areas in Cumbria, and achieve a ",strong("balance"),
           "between different ", em("interest groups"), "and other users.")
           )
       )
)        

# Define server logic ----
server <- function(input, output) {
}

# Run the app ---- this is a skeleton app- bare minimum
shinyApp(ui = ui, server = server)


  



