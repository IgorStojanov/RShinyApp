Presentation.R
========================================================
author: Igor Stojanov
date: 25/01/2015

Contents 
========================================================

This presentation :

- was made with Rstudio Presenter
- has 5 pages
- is hosed on github
- contains embeded R code

Contents 
========================================================

My Shiny App can do the following:

- read speed of light data from morley
- create histogram
- change settings of histogram
- show density estimation

Data used
========================================================


```r
summary(morley)
```

```
      Expt        Run            Speed       
 Min.   :1   Min.   : 1.00   Min.   : 620.0  
 1st Qu.:2   1st Qu.: 5.75   1st Qu.: 807.5  
 Median :3   Median :10.50   Median : 850.0  
 Mean   :3   Mean   :10.50   Mean   : 852.4  
 3rd Qu.:4   3rd Qu.:15.25   3rd Qu.: 892.5  
 Max.   :5   Max.   :20.00   Max.   :1070.0  
```

Plot of columns 
========================================================

![plot of chunk unnamed-chunk-2](Presentation.R-figure/unnamed-chunk-2-1.png) 
