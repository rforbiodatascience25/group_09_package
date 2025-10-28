#' codonize
#'
#' @param sequence DNA or RNA sequence
#' @param start codon start position
#'
#' @returns codonize returns the codons of a DNA or RNA sequence
#' @export
#'
#' @examples codonize(sequence = "ATGACATCGAUGTTA", start = 1)
codonize <- function(sequence, start = 1){
  sequence_length <- nchar(sequence)
  codons <- substring(sequence,
                      first = seq(from = start, to = sequence_length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = sequence_length, by = 3))
  return(codons)
}
