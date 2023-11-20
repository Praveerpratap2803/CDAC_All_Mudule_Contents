#Two_way_ANOVA
Two_way_ANOVA <- read_excel("D:/CDAC_Course/Advance Analytics-2023/Day-8_ANOVAs/Two Way ANOVA/Two_way_ANOVA.xlsx")
attach(Two_way_ANOVA)
str(Two_way_ANOVA)
Two_way_ANOVA$Place <-as.factor(Two_way_ANOVA$Place)
Two_way_ANOVA$Education <-as.factor(Two_way_ANOVA$Education)
str(Two_way_ANOVA)

#normality check
library(nortest)
shapiro.test(Two_way_ANOVA$Sales)

#homoginitey check
library(car)
leveneTest(Two_way_ANOVA$Sales,Two_way_ANOVA$Place)
leveneTest(Two_way_ANOVA$Sales,Two_way_ANOVA$Education)

#Model
model <- aov(Sales~Place+Education+Place*Education,data=Two_way_ANOVA)
model
summary(model)
model <- aov(Sales~Place+Education,data=Two_way_ANOVA)
model
summary(model)


