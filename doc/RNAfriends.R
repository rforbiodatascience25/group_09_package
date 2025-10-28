## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(RNAfriends)

## -----------------------------------------------------------------------------
RNAfriends::makeDNA(250)

## -----------------------------------------------------------------------------
DNAsequence <-"CTAAAAAAGGGGGGTTTTTTTTTCCCCCCCCCGTCAGCTACGTATGATGAGTAGATGCATATTTTT"
RNAfriends::function2(DNAsequence )

## -----------------------------------------------------------------------------
sequence = "ATGACATCGAUGTTAATGACATCGAUGTTAATGACATCGAUGTTAATCGAUGTTAATGACATCGAUGTTAATGACATCGAUGTTAATGAGACTTGACATCGAUGTAATCGAUGTTAATGACATTGACATCGAUGCGAUGTTAATGACATCGAUGTTAATGAGACATCGAUGTTAATGACATCGAUGTTAATGACATCGAUGTTAATGACATCGATCGAUGTTAATGACATCGAUGTTAATGACATCGAUGTTAATGACATCGAUGTTA"

RNAfriends::codonize(sequence, start = 1)

## -----------------------------------------------------------------------------
RNA_sequence = c("UUU", "AAA", "AUA")
RNA_sequence
peptide_sequence = RNAfriends::RNA_aminoacid_translation(RNA_sequence)

peptide_sequence

## -----------------------------------------------------------------------------
peptide_sequence = "QERRYQ"
RNAfriends::plot_aminoacids_abundance(peptide_sequence)

## -----------------------------------------------------------------------------
my_dna <- RNAfriends::makeDNA(20)
print(my_dna)

my_rna <- RNAfriends::function2(my_dna)
print(my_rna)

my_rna_codonized <- RNAfriends::codonize(my_rna, start = 1)
print(my_rna_codonized)

peptide_sequence = RNAfriends::RNA_aminoacid_translation(my_rna_codonized)
print(peptide_sequence)

RNAfriends::plot_aminoacids_abundance(peptide_sequence)

