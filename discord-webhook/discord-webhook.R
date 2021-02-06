# define webhook function
send_message <- function(webhookurl, my_text) {
  library(jsonlite)
  library(rvest)
  
  headers = c(
    `Content-type` = 'application/json'
  )
  data= toJSON(list("content"= my_text), auto_unbox = T)
  res <- httr::POST(url = webhookurl, httr::add_headers(.headers=headers), body = data)
}

# read in credentials
creds <- read.delim('/mnt/DATA/Projects/BA-20-21/danalysis-3/data/creds.txt', sep = ',') # change the path to your creds.txt file
webhookurl <- as.character(creds[creds$key == 'webhookurl', 2])
user <- as.character(creds[creds$key == 'user', 2])

my_text <- paste0('hello ', user, ' your model has finished training')

send_message(webhookurl, my_text)

