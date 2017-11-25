context("sets levels to the order in which they appear in the data")

test_that("Follow the order of appearance level",{
  #expectation for success
  order1 <- c("pear","apple","banana","banana","apple")
  order_by_hand <- c("pear","apple","banana")
  expect_identical(levels(order_appeared(order1)),order_by_hand )
  #expectation for failure.
  order2 <- c("apple","pear","banana","banana","apple")
  expect_error(level(order_appeared(order2))==order_by_hand)
  #"factor" order based on Alphabet, And "order_appeared" follow the order of appearance
  expect_error(level(order_appeared(order1))==level(factor(order1)))
})







