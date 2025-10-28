test_that("Test that the generated sequence has length equal to the input", {
  expect_equal(nchar(makeDNA(5)), 5)
})
