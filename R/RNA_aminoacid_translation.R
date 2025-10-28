#' RNA_aminoacid_translation
#'
#' @param codons selected RNA sequence
#'
#' @returns string of Aminoacids out of the selected RNA
#' @export

RNA_aminoacid_translation <- function(codons){
  string_codon_table <- paste0(codon_table[codons], collapse = "")
  return(string_codon_table)
}
