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
#' @usage bubble_sort(lst, ascending = TRUE)
#' 
#' @references https://en.wikipedia.org/wiki/Bubble_sort


bubble_sort <- function(lst, ascending=TRUE){
  
  # ---V--- CHECK INPUT ---V---
  # Check lst argument
  stopifnot("argument \'lst\' must be atomic" = is.atomic(lst))
  
  # Check ascending argument
  stopifnot("argument \"ascending\" is not logical (boolean)" = (is.logical(ascending) | ascending %in% c(0,1)))
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
    # Return sorted lst
    if (altered == FALSE){
      if (ascending == T){return(srtd_lst)}
      else{return(rev(srtd_lst))}
    }
  }
}
