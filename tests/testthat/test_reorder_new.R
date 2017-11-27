context("reordering levels using descend order")

test_that("reordering levels in descending order", {
  factor1 <- factor(c("1", "2", "3", "4","5"))
  using_rev_factor1 <- forcats::fct_rev(factor1)
  expect_identical(levels(reorder_new(factor1)), levels(using_rev_factor1))

})

test_that("two or more input",{
  ##only 1 input, if we enter 2 inputs and will show error
  expect_error(levels(reorder_new(1,2)))
})


test_that("expectation error", {
  expect_error(levels(reorder_new(1)),
               "This input is not character or factor")

})
