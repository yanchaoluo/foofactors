context("Detect factors that should be a character?")

test_that("expectation for success", {
  #This is character, so it will pass the test
  expect_identical(detect_factor_be_character(factor(c("apple", "banana", "pear"))),"This is character not factor")
  #This is character, so it will pass the test
  expect_identical(detect_factor_be_character(factor(c("1", "2", "3"))),"This is character not factor")
})

test_that("expectation for failure",{
  #This is factor so we expect error
  expect_error(detect_factor_be_character(factor(c("apple", "pear", "pear"))))

})
test_that("numerical input"{
  #This is number so we expect error
  expect_error(detect_factor_be_character(c(1,2)),
               "This is not factor or character")
})
