test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})

test_that("First RNA sequence will return into the correct string of aminoacids", {
  expect_equal(RNA_aminoacid_translation(c("UUU", "AAA")), "FK")
})
