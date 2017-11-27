#' Reorder levels in descending order
#'
#' @return This reorder fuction is using desc() in dplyr to reorder levels in descending order
#'
#' @param x factor
#'
#' @examples
#' reorder_new(factor(c("1","2","3")))
#' @export
reorder_new <- function(x) {
  if(!(is.factor(x)||is.character(x))){
    stop("This input is not character or factor")
  }
  result<-stats::reorder(x, dplyr::desc(x))
  return(result)
}

