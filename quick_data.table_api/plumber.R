library(plumber)

DT <- as.data.frame.table(mtcars)

#* @apiTitle Plumber with data.table


#* @get /quick_data.table_api
#* @tag cars

listCars <- function(){
  DT
}

#* @get /quick_data.table_api/dimension
#* @tag data.table dimension

dim.data.table <- function(dimension){
  dimension <- c(length(DT[[1]]),length(DT))
  
}

#* @get /quick_data.table_api/head
#* @tag Heads of data.table

head.data.table <- function(){
  head(DT, n=6L)
}


#* @get /quick_data.table_api/tail
#* @tag Tails of data.table

tail.data.table <- function() {
  tail(DT, n=5L)
} 

#* @get /quick_data.table_api/as.data.frame
#* @tag As.data.frame.data.table

as.data.frame.data.table <- function(){
  as.data.frame(DT, row.names = NULL, optional= FALSE)
}

#* @get /quick_data.table_api/as.list
#* @tag As.list.data.table

as.list.data.table <- function(){
  as.list(DT, row.names = NULL, optional= FALSE)
}

#* @get /quick_data.table_api/dimnames
#* @tag dimnames.data.table

dimnames.data.table <- function(){
  dimnames(DT)
}
