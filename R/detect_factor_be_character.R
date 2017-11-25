#' Detect factors that should be character or not?
#'
#' @param x factor
#'
#' @return if the number of unique values does not equal to the length, and \code{FALSE} otherwise.

#' @examples
#' factor1 <- factor(c("1", "2", "3"))
#' factor2 <- factor(c("apple", "pear", "banana"))
#'
#' # This is a character:
#' detect_factor_be_character(factor1)
#'
#' # This is a character
#' detect_factor_be_character(factor2)
#'
#' @export
detect_factor_be_character <- function(x){
  if(is.factor(x)||is.character(x)){
    if (length(x)==length(unique(x))){
      print("This is character not factor")
       }
    else stop("This is factor not character")
      }
  else stop("This is not factor or character")
  }


