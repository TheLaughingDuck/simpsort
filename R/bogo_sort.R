#' bogo_sort
#'
#' @description Sort an object `lst` by randomly rearranging it until it is sorted.
#'
#' @param lst An iterable object.
#'
#' @param ascending Boolean specifying whether to sort in ascending or descending order.
#'
#' @return A sorted object of the same class as `lst`.
#' 
#' @export bogo_sort


bogo_sort <- function(lst, ascending=TRUE){
  
  # ---V--- CHECK INPUT ---V---
  # Check arg1 argument
  #stopifnot("argument \"arg1\" is not ---" = is.---(arg1))
  
  # Check arg2 argument
  #stopifnot("argument \"arg2\" is not ---" = is.---(arg2))
  # ---^--- CHECK INPUT ---^---
  
  srtd_lst <- lst
  
  # Attempt to sort, check if sorted, and repeat.
  while (TRUE){
    # Check if sort was successful
    if (is_sorted(srtd_lst, ascending=ascending)){return(srtd_lst)}
    
    # Attempt to shuffle sort
    srtd_lst = lst[sample(length(srtd_lst), length(srtd_lst))]
  }
}
