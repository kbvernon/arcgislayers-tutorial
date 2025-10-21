#| label: arcgislayers-full-example
library(arcgislayers)

url <- file.path(
  "https://tigerweb.geo.census.gov",
  "arcgis/rest/services/TIGERweb/State_County/MapServer/0"
)

# connect to a map service
service <- arc_open(url)

# write and execute http request
utah <- arc_select(service, where = "NAME='Utah'")
