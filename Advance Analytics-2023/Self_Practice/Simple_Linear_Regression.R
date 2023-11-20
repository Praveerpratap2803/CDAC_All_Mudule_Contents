#Simple_Linear_Regression
Simple_linear_regression <- read_excel("D:/CDAC_Course/Advance Analytics-2023/Self_Practice/Simple_linear_regression.xlsx")
attach(Simple_linear_regression)

#normality check
library(nortest)
shapiro.test(Simple_linear_regression$Compensation)
shapiro.test(Simple_linear_regression$Performance)

#Linearity and Outliers
plot(Compensation,Performance)
boxplot(Compensation,Performance)

#Homoscedasticity
library(car)
leveneTest(Performance,Compensation)

model <- lm(Performance~Compensation,data=Simple_linear_regression)
summary(model)




