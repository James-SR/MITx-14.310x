# Module 1: Introduction to the Course
***


**Module Sections:**

* Welcome to the Course
* Introduction to R
* Introductory Lecture - Data is Beautiful, Insightful, Powerful, Deceitful
* Finger Exercises 
* Module 1: Homework

Module Content:

* [Module 1 Slides](./files/M1/Lecture_Slides_01.pdf)
* [Homework 1 Background Paper -  The Persistent Effects Of Peru’s Mining Mita](./files/M1/M1Paper.pdf) 
* [R Instructions](./files/M1/R_Instructions.pdf)  
* [Intro to R Zip File](./files/M1/14_310x_Intro_to_R_.zip.pdf)  
* [Citations Data for Homework 1]("./files/CitesforSara.csv")


## Introduction to R

First we setup the environment and install the course files


```r
library(swirl)
install_course_zip("./files/M1/14_310x_Intro_to_R_.zip",multi=FALSE)
swirl()
```

IF z is a three number vector e.g.


```r
z <- c(1.1, 9, 3.14)
```

If we take the square root of z - 1 and assign it to a new variable called my_sqrt e.g.


```r
my_sqrt <- sqrt(z - 1)
```

The result is a vector of length three e.g.


```r
my_sqrt
```

```
## [1] 0.3162278 2.8284271 1.4628739
```

Next, if we create a new variable called my_div that gets the value of z divided by my_sqrt.



```r
my_div <- z / my_sqrt
```

The first element of my_div is equal to the first element of z divided by the first element of my_sqrt, and so on...


```r
my_div
```

```
## [1] 3.478505 3.181981 2.146460
```

When given two vectors of the same length, R simply performs the specified arithmetic operation (`+`, `-`, `*`, etc.) element-by-element. If the vectors are of different lengths, R 'recycles' the shorter vector until it is the same length as the longer vector.

If the length of the shorter vector does not divide evenly into the length of the longer vector, R will still apply the 'recycling' method, but will
throw a warning.


```r
c(1, 2, 3, 4) + c(0, 10, 100)
```

```
## Warning in c(1, 2, 3, 4) + c(0, 10, 100): longer object length is not a
## multiple of shorter object length
```

```
## [1]   1  12 103   4
```


### Module 1 Homework

This is a sample of some of the homework answers. Some questions were observational or required interpretation of maps for example, as such these are not inluded here.


```r
library(tidyverse)
```

```
## -- Attaching packages ------------------ tidyverse 1.2.1 --
```

```
## v ggplot2 3.0.0     v purrr   0.2.5
## v tibble  1.4.2     v dplyr   0.7.6
## v tidyr   0.8.1     v stringr 1.3.1
## v readr   1.1.1     v forcats 0.3.0
```

```
## -- Conflicts --------------------- tidyverse_conflicts() --
## x dplyr::filter() masks stats::filter()
## x dplyr::lag()    masks stats::lag()
```

```r
papers <- as_tibble(read_csv("./files/M1/CitesforSara.csv"))
```

```
## Parsed with column specification:
## cols(
##   .default = col_integer(),
##   journal = col_character(),
##   title = col_character(),
##   au1 = col_character(),
##   au2 = col_character(),
##   au3 = col_character(),
##   past5 = col_double(),
##   aflpn90 = col_double(),
##   aulpn90 = col_double(),
##   aulpn80 = col_double(),
##   aulpn70 = col_double(),
##   lcites = col_double()
## )
```

```
## See spec(...) for full column specifications.
```

Q. 19 Let's take a look at some of the most popular papers. 
Using the filter() method, how many records exist where there are greater than or equal to 100 citations?


```r
#First lets look at our data
head(papers)
```

```
## # A tibble: 6 x 22
##   journal  year cites title au1   au2   au3   female1 female2 female3  page
##   <chr>   <int> <int> <chr> <chr> <chr> <chr>   <int>   <int>   <int> <int>
## 1 Americ~  1993    31 Jeux~ Kanb~ Keen~ <NA>        0       0      NA    16
## 2 Americ~  1993     4 Chan~ Jame~ <NA>  <NA>        0      NA      NA    22
## 3 Americ~  1993    28 Fact~ Bert~ <NA>  <NA>        0      NA      NA    15
## 4 Americ~  1993    10 Stra~ Garf~ Oh,-~ <NA>        1       0      NA    19
## 5 Americ~  1993     5 Will~ Coat~ Lour~ <NA>        0       0      NA    21
## 6 Americ~  1993    21 Merg~ Kim,~ Sing~ <NA>        0       0      NA    21
## # ... with 11 more variables: order <int>, nauthor <int>, past5 <dbl>,
## #   aflpn90 <dbl>, spage <int>, field <int>, subfld <int>, aulpn90 <dbl>,
## #   aulpn80 <dbl>, aulpn70 <dbl>, lcites <dbl>
```

```r
arrange(papers,desc(cites), title)
```

```
## # A tibble: 4,182 x 22
##    journal  year cites title au1   au2   au3   female1 female2 female3
##    <chr>   <int> <int> <chr> <chr> <chr> <chr>   <int>   <int>   <int>
##  1 Econom~  1980  2251 A He~ Whit~ <NA>  <NA>        0      NA      NA
##  2 Econom~  1979  2227 Pros~ Kahn~ Tver~ <NA>        0       0      NA
##  3 Econom~  1987  2164 Co-i~ Engl~ Gran~ <NA>        0       0      NA
##  4 Econom~  1979  1602 Samp~ Heck~ <NA>  <NA>        0      NA      NA
##  5 Econom~  1978  1217 Spec~ Haus~ <NA>  <NA>        0      NA      NA
##  6 Econom~  1982  1077 Auto~ Engl~ <NA>  <NA>        0      NA      NA
##  7 Econom~  1981  1031 Like~ Dick~ Full~ <NA>        0       0      NA
##  8 Econom~  1982   983 Larg~ Hans~ <NA>  <NA>        0      NA      NA
##  9 Econom~  1980   864 Macr~ Sims~ <NA>  <NA>        0      NA      NA
## 10 Econom~  1982   563 Time~ Kydl~ Pres~ <NA>        0       0      NA
## # ... with 4,172 more rows, and 12 more variables: page <int>,
## #   order <int>, nauthor <int>, past5 <dbl>, aflpn90 <dbl>, spage <int>,
## #   field <int>, subfld <int>, aulpn90 <dbl>, aulpn80 <dbl>,
## #   aulpn70 <dbl>, lcites <dbl>
```

```r
papers %>%
  filter(cites >= 100) 
```

```
## # A tibble: 205 x 22
##    journal  year cites title au1   au2   au3   female1 female2 female3
##    <chr>   <int> <int> <chr> <chr> <chr> <chr>   <int>   <int>   <int>
##  1 Americ~  1994   117 Is I~ Pers~ Tabe~ <NA>        0       0      NA
##  2 Econom~  1971   149 Furt~ Nerl~ <NA>  <NA>        0      NA      NA
##  3 Econom~  1971   170 The ~ Madd~ <NA>  <NA>       NA      NA      NA
##  4 Econom~  1971   155 Inve~ Luca~ Pres~ <NA>        0       0      NA
##  5 Econom~  1971   139 Some~ Crag~ <NA>  <NA>        0      NA      NA
##  6 Econom~  1971   108 Iden~ Roth~ <NA>  <NA>        0      NA      NA
##  7 Econom~  1972   164 Meth~ Fair~ Jaff~ <NA>        0       0      NA
##  8 Econom~  1972   150 Exis~ Radn~ <NA>  <NA>        0      NA      NA
##  9 Econom~  1973   361 Mani~ Gibb~ <NA>  <NA>        0      NA      NA
## 10 Econom~  1973   107 On a~ Kram~ <NA>  <NA>        0      NA      NA
## # ... with 195 more rows, and 12 more variables: page <int>, order <int>,
## #   nauthor <int>, past5 <dbl>, aflpn90 <dbl>, spage <int>, field <int>,
## #   subfld <int>, aulpn90 <dbl>, aulpn80 <dbl>, aulpn70 <dbl>,
## #   lcites <dbl>
```

Q.20 Use the group_by() function to group papers by journal. How many total citations exist for the journal "Econometrica"?


```r
papers %>%
  group_by(journal) %>%
  summarise(sum(cites))
```

```
## # A tibble: 7 x 2
##   journal                            `sum(cites)`
##   <chr>                                     <int>
## 1 American-Economic-Review                   3738
## 2 Econometrica                              75789
## 3 Journal-of-Political-Economy               3398
## 4 Quarterly-Journal-of-Economics             8844
## 5 Review-of-Economic-Studies                21937
## 6 Review-of-Economics-and-Statistics         8473
## 7 <NA>                                         14
```

```r
#or

summarize(group_by
          (papers, journal), 
          SumOfCites = sum(cites))
```

```
## # A tibble: 7 x 2
##   journal                            SumOfCites
##   <chr>                                   <int>
## 1 American-Economic-Review                 3738
## 2 Econometrica                            75789
## 3 Journal-of-Political-Economy             3398
## 4 Quarterly-Journal-of-Economics           8844
## 5 Review-of-Economic-Studies              21937
## 6 Review-of-Economics-and-Statistics       8473
## 7 <NA>                                       14
```

Q.21 How many distinct primary authors (au1) exist in this dataset?
  

```r
papers %>%
  summarise(n_distinct(au1))
```

```
## # A tibble: 1 x 1
##   `n_distinct(au1)`
##               <int>
## 1              2332
```

```r
#or

n_distinct(papers$au1)
```

```
## [1] 2332
```
  
