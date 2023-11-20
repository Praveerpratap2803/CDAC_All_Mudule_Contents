#Practise data and Question
#Q1
HortonGeneralHospital <- read_csv("D:/CDAC_Course/Advance Analytics-2023/Self_Practice/Practise Data and Question/HortonGeneralHospital.csv")
attach(HortonGeneralHospital)
View(HortonGeneralHospital)

adm_2000<-HortonGeneralHospital[HortonGeneralHospital$year==2000,c("year","Adm")]
adm_2001<-HortonGeneralHospital[HortonGeneralHospital$year==2001,c("year","Adm")]

#Assumption
#1)Normality

#library(nortest)
#sapiro used when data size<30  
#shapiro.test(adm_2000$Adm) #as p>0.05 so null accepted (not deviating from normal distribution) 
#shapiro.test(adm_2001$Adm)

library(moments)
skewness(adm_2000$Adm) # skewness range for normality -> -1 to 1
skewness(adm_2001$Adm)

kurtosis(adm_2000$Adm) # kurtosis range for normality -> -2 to 2
kurtosis(adm_2001$Adm)

#2) Homogeneous (skip)
#library(carData)
#library(car)
#leveneTest(adm_2000$Adm,adm_2001$Adm)

t.test(adm_2000$Adm,adm_2001$Adm,mu=0)
?t.test


#Q2

str(HortonGeneralHospital)
HortonGeneralHospital$Resp<-as.factor(HortonGeneralHospital$Resp)
HortonGeneralHospital$Hypo<-as.factor(HortonGeneralHospital$Hypo)
HortonGeneralHospital$Cardio<-as.factor(HortonGeneralHospital$Cardio)
str(HortonGeneralHospital)

model1 <- aov(Adm~Resp+Cardio+Hypo*Resp*Cardio*Hypo,data = HortonGeneralHospital)
model1
summary(model1)
?aov

#Q3
model<-lm(HortonGeneralHospital$Adm~Resp+Cardio+Hypo,data = HortonGeneralHospital)
summary(model)
plot(model)

fitall <- lm(Adm~.,data = HortonGeneralHospital)
fitfirst <- lm(Adm~1,data = HortonGeneralHospital)

step(fitfirst,direction = c("forward"),scope = formula(fitall))
step(fitall,direction = c("backward"))
?step

library(ggplot2)
ggplot(data=HortonGeneralHospital,aes(x=Adm,y=Cardio)) +geom_point()
ggplot(data=HortonGeneralHospital,aes(x=Adm)) +geom_boxplot()
ggplot(data=HortonGeneralHospital,aes(x=Adm)) +geom_density()
ggplot(data=HortonGeneralHospital,aes(x=Adm)) +geom_histogram()
ggplot(data=HortonGeneralHospital,aes(x=Adm,y=Cardio)) +geom_line()


ggplot(data = HortonGeneralHospital,aes(1:nrow(HortonGeneralHospital),Adm)) +geom_line()
pie(Adm)
?ggplot

mean(HortonGeneralHospital$Adm)
