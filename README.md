# DeployDataQualityDashboard

## 1. Download this repo

You can download it from: [here](https://github.com/oxford-pharmacoepi/DeployDataQualityDashboard/archive/refs/heads/main.zip) or using github desktop.

Once you have it downloaded open the file: `DeployDataQualityDashboard.Rproj`

## 2. Setup your libraries

We are going to sue the following libraries: `shiny`, `here`, `jsonlite`, `remotes` and `DataQualityDashboard`. If you don't have them installed please install:
- To install from CRAN, run the following command from R console: `install.packages(c("shiny", "here", "jsonlite", "remotes"))`
- To install from github, run the following command from R console: `remotes::install_github("ohdsi/DataQualityDashboard")`

## 3. Open and run the app

Open the file: `app.R`, edit line 7 of `app.R` and change `...` to the json file name e.g. `jsonPath <- here::here("cdm_new_database_dqd.json")` and run the whole script.

The shiny should pop up and you should be able to deploy it with the **publish** button on the top right
