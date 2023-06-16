library(shiny)
library(DataQualityDashboard)

# path to the jsonfile
jsonPath <- here::here("...")

server <- function(input, output, session) {
  observe({
    results <- convertJsonResultsFileCase(jsonPath, writeToFile = FALSE, targetCase = "camel")
    results <- jsonlite::parse_json(jsonlite::toJSON(results))
    session$sendCustomMessage("results", results)
  })
}

ui <- fluidPage(
  suppressDependencies("bootstrap"),
  shiny::htmlTemplate(filename = here::here("www", "index.html")),
  tags$head(
    tags$script(src = "js/loadResults.js"),
    tags$script("Shiny.addCustomMessageHandler('results', loadResults);")
  )
)

shiny::shinyApp(ui = ui, server = server)

