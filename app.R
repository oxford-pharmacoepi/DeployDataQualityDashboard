library(shiny)
library(DataQualityDashboard)
library(here)
library(jsonlite)

# path to the jsonfile
jsonPath <- here("...")
results <- convertJsonResultsFileCase(jsonPath, writeToFile = FALSE, targetCase = "camel")
results <- parse_json(toJSON(results))

server <- function(input, output, session) {
  session$sendCustomMessage("results", results)
}

ui <- fluidPage(
  suppressDependencies("bootstrap"),
  htmlTemplate(filename = here("www", "index.html")),
  tags$head(
    tags$script(src = "js/loadResults.js"),
    tags$script("Shiny.addCustomMessageHandler('results', loadResults);")
  )
)

shinyApp(ui = ui, server = server)

