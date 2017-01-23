library(RODBC)

query <- "select top 10 *
  from dbo.IDE_Advisor"

sql.query <- function(server,database,query) {
    library(RODBC)
    myconn <<- odbcDriverConnect(paste('driver={SQL Server};server=',server,';database=',database,';trusted_connection=true',sep = ""))
    data <- sqlQuery(myconn,query)
    odbcCloseAll()
    return(data)
  }

data <- sql.query("CRASTRMSRS02","Prod01",query)
