#' is_sorted
#'
#' @description Check if an iterable object `lst` is sorted.
#'
#' @param lst An iterable object.
#'
#' @param ascending Boolean specifying whether to check if `lst` is in ascending or descending order.
#'
#' @return Boolean, specifying whether `lst` is sorted.
#' 
#' @export is_sorted

is_sorted <- function(lst, ascending=TRUE){
  
  # ---V--- CHECK INPUT ---V---
  # Check arg1 argument
  #stopifnot("argument \"arg1\" is not ---" = is.---(arg1))
  
  # Check arg2 argument
  #stopifnot("argument \"arg2\" is not ---" = is.---(arg2))
  # ---^--- CHECK INPUT ---^---
  
  # Reverse if lst should be descending
  if (ascending == FALSE){lst <- rev(lst)}
  
  # Loop over elements and check if any is smaller than the previous
  for (i in 2:length(lst)){if (lst[i-1] > lst[i]){return(FALSE)}}
  return(TRUE)
}
