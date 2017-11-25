context("Detect factors that should be a character?")

test_that("detect_factor_be_character test factor be character or not", {
  #This is factor so we expect error
  expect_error(detect_factor_be_character(factor(c("apple", "pear", "pear"))))
  #This is number so we expect error
  expect_error(detect_factor_be_character(c(1,2)),
               "This is not factor or character")
  #This is character, so it will pass the test
  expect_identical(detect_factor_be_character(factor(c("apple", "banana", "pear"))),"This is character not factor")
})


