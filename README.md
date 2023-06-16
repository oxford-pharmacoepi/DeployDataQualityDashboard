# DeployDataQualityDashboard

1. Open `DeployDataQualityDashboard.Rproj`
2. Add the json file to the same folder that `DeployDataQualityDashboard.Rproj` is
3. Open `app.R`
4. Edit line 5 of `app.R` and change `...` to the json file name e.g. jsonPath <- here::here("cdm_new_database_dqd.json")
5. Run thw whole script
6. The shiny shoup pop up and you should be able to deploy it with the publish button on the top right
