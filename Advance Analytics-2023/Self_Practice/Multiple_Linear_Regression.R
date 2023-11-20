#Multiple_Linear_Regression
MR1 <- read_excel("D:/CDAC_Course/Advance Analytics-2023/Day-9_Correlation_Simple and Multiple Regression _Stepwise Regression/Regression_Simple and Multiple/Multiple Regression/MR1.xlsx")
attach(MR1)

#All Assumption




#model
model <- lm(Buying~Rating+Cost+Perception+Awarness+Attitude,data=MR1)
summary(model)
vif(model)
?vif
model1 <- lm(Buying~Perception+Awarness+Attitude,data = MR1)
summary(model1)
library(car)
vif(model1)
plot(model1)
plot(model)
par(mfrow=c(2,2))











