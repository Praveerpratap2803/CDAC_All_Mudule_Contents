#One Sample t-test
Indian_oil_ethanol <- read_excel("D:/CDAC_Course/Advance Analytics-2023/Day-7_T-tests/T-tests/One Sample t-test/Indian oil_ethanol.xlsx")
attach(Indian_oil_ethanol)
View(Indian_oil_ethanol)
#Test the normality of data
library(nortest)
shapiro.test(`Mileage with ethanol`) # sample size < 30
#shapiro.test(Indian_oil_ethanol$`Mileage with ethanol`)
boxplot(`Mileage with ethanol`)

library(moments)
skewness(`Mileage with ethanol`)

ad.test(`Mileage with ethanol`)

lillie.test(`Mileage with ethanol`)

kurtosis(`Mileage with ethanol`)

t.test(`Mileage with ethanol`,mu=12)

