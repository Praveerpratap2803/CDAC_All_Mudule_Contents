# Read csv file

df1 <- read.csv("D:\\CDAC_Course\\R_Programming\\76_attributes_heartdiseases.csv")

df2 <- read.csv("D:\\CDAC_Course\\R_Programming\\sample1.txt", sep = "|")

df3 <- read.csv("D:\\CDAC_Course\\R_Programming\\sample2.txt", sep = "|", skip = 2)

# Store Data frame to a File
write.csv(df2,"new_df.csv")

data1 <- subset(df, df$V10>90, c("V10"))
?subset

summary(df$V10)

m = matrix( c(1,2,3,4,5,6,7,8,9), nrow = 3, ncol = 3)
df1 = as.data.frame(m)

colnames(df1) = c('a','b','c')
row.names(df1) = c('a1','b1','c1')
df1
library(ggplot2)

data = iris
data
nrow(iris)
ncol(iris)

str(iris)
summary(iris)
?ggplot
#Line Plot--> describe the trend
ggplot(data=iris, aes(1:150, Sepal.Length)) + geom_line()


# Scatter plot--> Understand relation between x & y
ggplot(data, aes(x = Sepal.Length, y = Sepal.Width)) +geom_point()

# Bar chart
ggplot(iris, aes(x = Species, y = Sepal.Length)) +geom_col()
# distribution of 
ggplot(iris, aes(x = Species, y = Sepal.Length)) +geom_violin()


# Histogram
ggplot(data, aes(Sepal.Length)) + geom_bar()
ggplot(data, aes(Sepal.Length)) +  geom_histogram(bins = 17) 

# Density plot
ggplot(data, aes(Sepal.Length)) +geom_density()

# Box plot
ggplot(data, aes(Sepal.Length)) + geom_boxplot()



#How to set labels and titles
ggplot(data, aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_point() + labs(x='x axis label', y='y axis label',
                      title='title', subtitle='subtitle',
                      caption='image using ggplot2')


dta <-ggplot(iris, aes(x = Species, y = Sepal.Length)) +geom_violin()
print(dta)

print(dta + labs(y="Petal length (cm)", x = "Sepal length (cm)")) +ggtitle("Petal and sepal length of iris")
    
boxplot(iris$Sepal.Length)

plot(iris$Sepal.Length) # scatter plot



library(ggplot2)
?ggplot
iris
summary(iris)
str(iris)
ggplot(data=iris,aes(x=1:150,y=Sepal.Width)) + geom_line()
ggplot(data=iris,aes(x=Sepal.Length,y=Sepal.Width)) +geom_point()
ggplot(data=iris,aes(x=Sepal.Length,y=Sepal.Width)) + geom_col()
ggplot(data=iris,aes(x=Sepal.Length)) + geom_histogram()
ggplot(data=iris,aes(x=Sepal.Length)) + geom_boxplot()
?ggplot
