# cd /Users/ak/Code/ainots/specds/ds1/docker 
# docker compose up -d
# docker compose down

weather <- read.csv("/Users/ak/Code/ainots/specds/ds1/R/weather.csv", sep = ";", header = TRUE)

library(RODBC)

ConnectionString <- "driver={PostgreSQL ANSI};server=localhost;port=5432;database=ds1;uid=ds1;pwd=ds1"

Session <- odbcDriverConnect(ConnectionString)
CARS <- sqlQuery(Session, "SELECT * FROM mtcars")

RES <- c(1,2,3) + c(100, 200, 300)
