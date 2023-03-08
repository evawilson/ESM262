#' summarize_fish_catch
#' 
#' define function to find and output the most common fish, most rare fish, and total number of fish in the catch
#' @param fish_data (includes five fish types from fish.txt)

summarize_fish_catch = function(fish_data){
  
  # check if the data input is in vector form 
  if(!is.vector(fish_data)){
    stop("Data input into this function is not in vector form")
  }
  #find the fish that is the most common
  most_common <- names(which.max(summary(as.factor(fish_data))))
  
  #find the fish that is the most rare
  most_rare <- names(which.min(summary(as.factor((fish_data)))))
  
  #find the total number of fish
  total_fish <- length(fish_data)
  
  #return outputs as a list
  return(list(most_common, most_rare, total_fish))
}

