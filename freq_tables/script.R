data <- mtcars

library(questionr)
questionr::freq(data$cyl, cum = TRUE, sort = "dec", total = TRUE)

library(summarytools)
summarytools::freq(data$cyl, order = "freq")

library(epiDisplay)
tab1(data$cyl, sort.group = "decreasing", cum.percent = TRUE)

library(janitor)
tabyl(data$cyl, sort = TRUE)
