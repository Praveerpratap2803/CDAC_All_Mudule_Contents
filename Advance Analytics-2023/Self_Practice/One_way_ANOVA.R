#One_way_ANOVA
One_Way_Anova_CBSE <- read_excel("D:/CDAC_Course/Advance Analytics-2023/Day-8_ANOVAs/One Way ANOVA/One_Way_Anova_ CBSE.xlsx")
attach(One_Way_Anova_CBSE)
View(One_Way_Anova_CBSE)

str(One_Way_Anova_CBSE)
#It will convert the numeric data into the factors type
One_Way_Anova_CBSE$City <- as.factor(One_Way_Anova_CBSE$City)
One_Way_Anova_CBSE$City
str(One_Way_Anova_CBSE)

#normality check
library(nortest)
#shapiro.test(One_Way_Anova_CBSE$Marks) not using as data size > 30
library(moments)
skewness(One_Way_Anova_CBSE$Marks)
kurtosis(One_Way_Anova_CBSE$Marks)

#homogeneity check
library(car)
leveneTest(One_Way_Anova_CBSE$Marks,One_Way_Anova_CBSE$City)


model <- aov(One_Way_Anova_CBSE$Marks~One_Way_Anova_CBSE$City,data=One_Way_Anova_CBSE)
model
summary(model)# to know is there any difference 

TukeyHSD(model)# to know within whome and how much difference is there

