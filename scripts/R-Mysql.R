# R Mysql connection 

# Define library
library(RMySQL)

# database Connect
drv <- dbDriver("MySQL")
con <- dbConnect(drv, dbname = "dbname",
                 host = "localhost",
                 port = 3306,
                 user = "usuario",
                 password = "contraseña"
                 )

# querys for select data
query <- 'SELECT tinm_id,tinm_descripcion FROM tbl_tipo_inmueble WHERE tinm_estatus = 1'

# execute query
test <- dbGetQuery(con,query)

# database disconnect
dbDisconnect(con)

# ver query en  variable
test %>% View()




