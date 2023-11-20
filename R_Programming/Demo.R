
m <- matrix(c)
a=c(1,2,3,4)
a
cat()

v1=2:8
v1
#Atomic vector
#1numeric
a=100
a
#2integer
b=101L
b
#3logical
c=TRUE
c
#4complex
d=2+3i
d
#5character
e="Hi"
e
#array (c->combine) -> all value have same datatype (otherwise if not there then it will be converted into same datatype)
f=c(1,2,3,"hi")
?c
f#all value is converted in string
#lists->store any type of element
g <- list(1,3.4,"hi")
g
#matrix
h=matrix(c(1,2,3,4,5,6))
h
i=matrix(c(1,2,3,4,5,6),nrow=2,ncol=3)
i
j=matrix(c(1,2,3,4,5,6),nrow=2)
j
j[1,]



#Dataframe
M1<- matrix(c(1:10),nrow=4)
M1
?matrix
df<-as.data.frame(M1)
df
str(df)
?data.frame
colnames(df) = c("c1","c2","c3")
df
#read csv file
read.csv("")

X76_attributes_heartdiseases <- read_csv("D:/CDAC_Course/R_Programming/76_attributes_heartdiseases.csv")
df1<-X76_attributes_heartdiseases
#df1<-as.data.frame(X76_attributes_heartdiseases)
df1
head(df1)
summary(df1)
subset(df1,df1$V1<50)
subset(df1,df1$V1<50,select = c("V1","V2"))

Filter(is.numeric,df1)
?Filters

#graph plots
gr1<-matrix(c(1,2,3,4,1,2,3,4),nrow = 5)
gr1
gr2<-matrix(c(9,8,7,6,5,4,3,2),nrow = 5)
gr2
?plot

plot(gr1,gr2)#scatter plot
pie(gr1)
boxplot(gr1)
hist(gr1)
barplot(gr1)
plot(gr1,gr2,type = 'l')


library(ggplot2)

data=iris
View(data)

nrow(data)
ncol(data)
str(iris)
summary(iris)
?ggplot


