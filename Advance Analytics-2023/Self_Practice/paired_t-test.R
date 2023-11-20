#paired_t-test
pair_t <- read_excel("D:/CDAC_Course/Advance Analytics-2023/Day-7_T-tests/T-tests/pair_t.xlsx")
attach(pair_t)
library(nortest)
shapiro.test(pair_t$Diff)
View(pair_t)
library(moments)

#paried t-test
t.test(pair_t$Bef,pair_t$Aft,mu=0,paried=T)
t.test(pair_t$Bef,pair_t$Aft,mu=0,alternative = c("two.sided"),
       paired=T,var.equal =T,conf.level = 0.95 )






