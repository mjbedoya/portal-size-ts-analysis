###

# Under the git tab at the right:
# git ignore: just when I dint want to save or ignore something

get_data<-function(){
  read.csv("surveys")
  return(data)
}

get_size_class <-function(weight){
  if(weight > 50) {
    size_class <- "large"
  }
  else{
    size_class<-"small"
  }
  return(size_class)
}
# Use a threshold for determining size class