# DeployDataQualityDashboard

1. Download this repo
2. Open `DeployDataQualityDashboard.Rproj`
3. Add the json file to the same folder that `DeployDataQualityDashboard.Rproj` is
4. Open `app.R`
5. Edit line 5 of `app.R` and change `...` to the json file name e.g. jsonPath <- here::here("cdm_new_database_dqd.json")
6. Run thw whole script
7. The shiny shoup pop up and you should be able to deploy it with the publish button on the top right
