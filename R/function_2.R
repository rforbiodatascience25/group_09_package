#' Transcription
#'
#' @param x2 this function replace T by U
#'
#' @returns It returns the same sequence but changing T by U
#' @export
#'
#'
function2 <- function(x2){
  n3 <- gsub("T", "U", x2)
  return(n3)
}
