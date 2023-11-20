#Correlation_analysis
CR <- read_excel("D:/CDAC_Course/Advance Analytics-2023/Self_Practice/CR.xlsx")
attach(CR)
View(CR)
#normality check
shapiro.test(CR$advt)
shapiro.test(CR$sales)

#Outliers
plot(advt,sales)
boxplot(advt,sales)

#Linearity
plot(advt,sales)

#Homoscedasticity
library(car)

leveneTest(advt,sales)


cor.test(advt,sales)

#if data not normalised then we use the spearman
#below are 3 cases
#continuous & continuous (not normalised)
#continuous & ordinal
#ordinal & ordinal
cor.test(advt,sales,method = "spearman")




