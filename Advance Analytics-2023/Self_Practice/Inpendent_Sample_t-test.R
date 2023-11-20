#Inpendent Sample t-test

independent_t <- read_excel("D:/CDAC_Course/Advance Analytics-2023/Day-7_T-tests/T-tests/independent_t.xlsx")
attach(independent_t)
View(independent_t) # helps to see the data
library(nortest)
shapiro.test(independent_t$Mumbai)
shapiro.test(independent_t$Delhi)

library(moments)
skewness(Mumbai)
boxplot(Mumbai)

t.test(Mumbai,Delhi,mu=0)




