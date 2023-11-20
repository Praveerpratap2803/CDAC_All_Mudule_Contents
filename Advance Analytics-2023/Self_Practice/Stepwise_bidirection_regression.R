#Stepwise_bidirection_regression


MR1 <- read_excel("D:/CDAC_Course/Advance Analytics-2023/Day-9_Correlation_Simple and Multiple Regression _Stepwise Regression/Regression_Simple and Multiple/Multiple Regression/MR1.xlsx")
attach(MR1)
fitall <- lm(Buying~.,data = MR1)
fitfirst <- lm(Buying~1,data = MR1)

step(fitfirst,direction = "both",scope = formula(fitall))
