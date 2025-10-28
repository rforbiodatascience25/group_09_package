#' Make a DNA sequence
#'
#' @param generateseq this function generates a sampled line of nucleotides, in a DNA_string format.
#'
#' @returns the function returns a character string of DNA bases.
#' @export
#'
#'
makeDNA <- function(generateseq){
  sample_bases <- sample(c("A", "T", "G", "C"), size = generateseq, replace = TRUE)
  sample_DNA <- paste0(sample_bases, collapse = "")
  return(sample_DNA)
}
