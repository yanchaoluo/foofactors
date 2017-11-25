#' Set levels of a factor to the order appeared in data
#'
#' @param x a vector or a factor
#'
#' @return a factor with levels in the order appeared in x.
#' This function will only return unique x levels,
#'
#' @examples order_appeared (c("pear","apple","banana","banana","apple"))
#' @export
order_appeared <- function(x){
  if(class(x)!="factor"&&class(x) != "character"){
    stop("This input is not character or factor")
  }
  unique_order<-as.character(unique(x))
  result <- factor(x, levels = unique_order)
  return(result)
}
