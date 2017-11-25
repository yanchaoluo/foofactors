context("creating a frequency table for factor")

test_that("freq_out function creates a frequency table", {
  factor1 <- factor(c("a", "b", "c", "d", "e", "c", "c", "a"))
  factor1_list <- list(x = factor(c("a", "b", "c", "d", "e")), n = as.integer(c("2", "1", "3", "1", "1")))
  factor1_dataframe<- as.data.frame(factor1_list)
  #expectation for success
  expect_equal(freq_out(factor1), factor1_dataframe)
  factor2 <- factor(c("a", "a", "a", "a", "a", "b","c","c","c"))
  factor2_list <- list(x = factor(c("a", "b", "c")), n = as.integer(c("5", "1", "3")))
  factor2_dataframe <- as.data.frame(factor2_list)
  expect_equal(freq_out(factor2), factor2_dataframe)
  #expectation for failure.
  ### Empty input
  expect_error(freq_out())
  ## frequency factor1 is not the same as factor2_dataframe
  expect_error(freq_out(factor1)==factor2_dataframe)
})


