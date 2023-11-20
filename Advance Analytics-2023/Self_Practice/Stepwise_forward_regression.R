#Stepwise_forward_regression
MR1 <- read_excel("D:/CDAC_Course/Advance Analytics-2023/Day-9_Correlation_Simple and Multiple Regression _Stepwise Regression/Regression_Simple and Multiple/Multiple Regression/MR1.xlsx")
attach(MR1)
View(MR1)
fitall <- lm(Buying~.,data = MR1)
fitfirst <- lm(Buying~1,data = MR1)

step(fitfirst,direction = "forward",scope = formula(fitall))
?step

# buying = awareness*0.46 + attitude*0.37 +perception*0.194 + cost*0.035 + 0.447


