###

# Under the git tab at the right:
# git ignore: just when I dint want to save or ignore something


library(dplayer)
get_data<-function(){
  data<-read.csv("surveys")
  return(data)
}

get_size_class <-function(weight, threshold){
  if(weight > threshold) {
    size_class <- "large"
  }
  else{
    size_class<-"small"
  }
  return(size_class)
}

add_size_class<- function(df){
  data_w_size_class <-
    df %>%
    na.omit() %>%
    rowwise() %>%
    mutate(size_calss=get_size_calss(weight, 50))
  return(data_w_size_class)
}

