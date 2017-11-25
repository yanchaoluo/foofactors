## ------------------------------------------------------------------------
# install.packages("devtools")
devtools::install_github("yanchaoluo/foofactors")
library(foofactors)

## ------------------------------------------------------------------------
factor1<- factor(c("This", "is", "test", "for"))
factor2 <- factor(c("how", "to", "use", "fbind","function"))

## ------------------------------------------------------------------------
c(factor1, factor2)

## ------------------------------------------------------------------------
fbind(factor1, factor2)

## ------------------------------------------------------------------------
set.seed(1)
sample_letters <- factor(sample(letters[1:4], size = 100, replace = TRUE))
as.data.frame(table(sample_letters))

## ------------------------------------------------------------------------
freq_out(sample_letters)

## ------------------------------------------------------------------------
factor1<- class(factor(c("apple", "pear", "banana")))
factor2<- class(factor(c("apple", "pear", "apple")))

## ------------------------------------------------------------------------
factor1 <- factor(c("apple", "pear", "banana"))
detect_factor_be_character(factor1)

## ------------------------------------------------------------------------
reorder_new(factor(c("1","2","3")))

## ------------------------------------------------------------------------
factor(c("pear","apple","banana","banana","apple"))
order_appeared (c("pear","apple","banana","banana","apple"))

