**NOTE: This is a toy package created for expository purposes. It is not meant to actually be useful. If you want a package for factor handling, please see [forcats](https://cran.r-project.org/package=forcats).**

foofactors
----------

Factors are a handy type of variable in R, but they can also drive you nuts. This package provides some helper functions for the care and feeding of factors.

Description: This is a package, which we can find some new function such as fbind(),order\_appeared(), reorder\_new(),etc. Factors have driven people to extreme measures, like ordering custom conference ribbons and laptop stickers to express how HELLNO we feel about stringsAsFactors. And yet, sometimes you need them. Can they be made less maddening? Let's find out. This package is similar to forcats package, and you could find more factor function in forcats.

*Rscripts for functions are in R folder*

*Tests for functions are in the test folder*

Installation
------------

``` r
# install.packages("devtools")
library(devtools)
```

    ## Warning: package 'devtools' was built under R version 3.4.2

``` r
devtools::install_github("yanchaoluo/foofactors")
```

    ## Downloading GitHub repo yanchaoluo/foofactors@master
    ## from URL https://api.github.com/repos/yanchaoluo/foofactors/zipball/master

    ## Installing foofactors

    ## Installing 1 package: devtools

    ## Warning: package 'devtools' is in use and will not be installed

    ## "D:/R/R-34~1.1/bin/x64/R" --no-site-file --no-environ --no-save  \
    ##   --no-restore --quiet CMD INSTALL  \
    ##   "C:/Users/dluo/AppData/Local/Temp/RtmpYHruwZ/devtools13546a4f4365/yanchaoluo-foofactors-0a66f5a"  \
    ##   --library="D:/R/R-3.4.1/library" --install-tests

    ## 

``` r
library(foofactors)
```

The `foofactors` package has five functions:

-   `fbind`: Create a new factor from two existing factors, where the new factor's levels are the union of the levels of the input factors.

-   `freq_out`: Make a frequency table for a factor.

-   `order_appeared`: Set levels of a factor to the order appeared in data.

-   `reorder_new`: Reorder levels in descending order.

-   `detect_factor_be_character`: Detect factors be character or not.

### Binding two factors using `fbind()`:

The `fbind` function puts two factors together as one.

``` r
factor1<- factor(c("This", "is", "test", "for"))
factor2 <- factor(c("how", "to", "use", "fbind","function"))
```

If we only use `c` function, which we can not get the expected result.

``` r
c(factor1, factor2)
```

    ## [1] 4 2 3 1 3 4 5 1 2

Using `fbind()` function.

``` r
fbind(factor1, factor2)
```

    ## [1] This     is       test     for      how      to       use      fbind   
    ## [9] function
    ## Levels: fbind for function how is test This to use

### Make a frequency table for a factor: `freq_out()`

The `freq_out` gives a dataframe with factors and their frequency.

If we could use `as.data.frame` function.

``` r
set.seed(1)
sample_letters <- factor(sample(letters[1:4], size = 100, replace = TRUE))
as.data.frame(table(sample_letters))
```

    ##   sample_letters Freq
    ## 1              a   20
    ## 2              b   32
    ## 3              c   21
    ## 4              d   27

The `freq_out()` function is much easy to make the frequency table.

``` r
freq_out(sample_letters)
```

    ## # A tibble: 4 x 2
    ##        x     n
    ##   <fctr> <int>
    ## 1      a    20
    ## 2      b    32
    ## 3      c    21
    ## 4      d    27

### Detect factors that should be character: `detect_factor_be_character`

It's hard to figure out factor and character in R, for example:

``` r
factor1<- class(factor(c("apple", "pear", "banana")))
factor2<- class(factor(c("apple", "pear", "apple")))
```

From above code, both "factor1" and "factor2" are defined as the factor by using `class()`. However, "factor1" should be a character because of the number of unique value equal to the length.

Using `detect_factor_be_character` function can easily find "character", "factor" and neither "character" or "factor."

``` r
factor1 <- factor(c("apple", "pear", "banana"))
detect_factor_be_character(factor1)
```

    ## [1] "This is character not factor"

    factor2 <-  factor(c("apple", "pear", "apple"))
    factor3<- c(1,2,2,3)
    detect_factor_be_character(factor2)
    detect_factor_be_character(factor3) 

The R code above will show two types of error when you use "detect\_factor\_be\_character."

### Reorder level of factor:

This function is very similar with `fct_rev` function. and `reorder_new` fuction is using desc() in dplyr to reorder factor levels in descending order.

``` r
reorder_new(factor(c("1","2","3")))
```

    ## [1] 1 2 3
    ## attr(,"scores")
    ##  1  2  3 
    ## -1 -2 -3 
    ## Levels: 3 2 1

From the code above, we could find that the orginal order levels is 1, 2, 3. Using the `reorder_new` function we get decending order 3, 2, 1.

### Sets levels to the order in which they appear in the data: order\_appeared

Here I create a function which set the order following appearance level. This function will only return unique input levels,

``` r
factor(c("pear","apple","banana","banana","apple"))
```

    ## [1] pear   apple  banana banana apple 
    ## Levels: apple banana pear

``` r
order_appeared (c("pear","apple","banana","banana","apple"))
```

    ## [1] pear   apple  banana banana apple 
    ## Levels: pear apple banana

If we only use `factor`function, the factor level will follow the alphabet. Using `order_appeared` function, the factor level will order in which they appear in the data.
