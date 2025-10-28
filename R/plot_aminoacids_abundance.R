#' make bar plot of aminoacids abundance
#'
#' @param aminoacid_sequence sequence of aminoacids
#'
#' @returns bar plot of the aminoacids abundance
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @importFrom stringr str_split boundary str_count
#'
#' @export
#'

plot_aminoacids_abundance <- function(aminoacid_sequence){
  # separates Aminoacids
  unique_DNA_chars <- aminoacid_sequence |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  # create dataframe where each aminoacids get assigned to its count
  counts <- sapply(unique_DNA_chars, function(amino_acid) stringr::str_count(string = aminoacid_sequence, pattern =  amino_acid)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["aminoacid_sequence"]] <- rownames(counts)

  # plotting frequence of aminoacids existing in the given sequence
  bar_plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = aminoacid_sequence, y = Counts, fill = aminoacid_sequence)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(bar_plot)
}
