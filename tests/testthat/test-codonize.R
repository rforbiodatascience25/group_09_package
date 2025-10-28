test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})

test_that("Test that the function correcly splits the sequence string into strings of codons", {
  expect_equal(codonize("ATGAAATTTGGG", start = 1), c("ATG", "AAA", "TTT", "GGG"))
})
