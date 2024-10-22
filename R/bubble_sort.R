#' bubble_sort
#'
#' @description Sort an object `lst` using the bubble sort algorithm.
#'
#' @param lst An iterable object.
#'
#' @param ascending Boolean specifying whether to sort in ascending or descending order.
#'
#' @return A sorted object of the same class as `lst`.
#' 
#' @export bubble_sort
#' 
#' @usage bubble_sort(lst=c(4,3,5,2,1), ascending = TRUE)
#' 
#' @references https://en.wikipedia.org/wiki/Bubble_sort


bubble_sort <- function(lst, ascending=TRUE){
  
  # ---V--- CHECK INPUT ---V---
  # Check arg1 argument
  #stopifnot("argument \"arg1\" is not ---" = is.---(arg1))
  
  # Check arg2 argument
  #stopifnot("argument \"arg2\" is not ---" = is.---(arg2))
  # ---^--- CHECK INPUT ---^---
  
  srtd_lst <- lst
  
  repeat{
    # Loop over srtd_lst
    altered <- FALSE
    for (i in 2:length(srtd_lst)){
      # Check whether to flip
      if (srtd_lst[i-1] > srtd_lst[i]){
        # Switch the values
        carry <- srtd_lst[i-1]
        srtd_lst[i-1] <- srtd_lst[i]
        srtd_lst[i] <- carry
        
        # Note that a switch occured
        altered <- TRUE
      }
    }
    if (altered == FALSE){return(srtd_lst)}
  }
}
