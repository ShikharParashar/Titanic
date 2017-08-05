rm(list=ls())

setwd("../Titanic/")

get_data <- function(){
  
  data_train <- read.csv(textConnection("https://www.kaggle.com/c/titanic/download/test.csv"), stringsAsFactors=FALSE, header=TRUE)
  data_test <- read.csv(textConnection("https://www.kaggle.com/c/titanic/download/train.csv"), stringsAsFactors=FALSE, header=TRUE)
  
  data_train$isTrainingSet <- TRUE
  data_test$isTrainingSet <- FALSE
  
  data_test$Survived <- NA
  
  data_all <- dplyr::bind_rows(data_train, data_test)
  
  return(data_all)
 
  }
  



main


