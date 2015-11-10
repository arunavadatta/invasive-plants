dir()




d=read.csv("18_10_15_Combined.csv",header=T)
str(d)


library(plyr)
d$Garden=revalue(d$Garden, c("L"="Low", "M"="Mid"))
d$Origin=revalue(d$Origin,c("A"="Highest",B="Middle", C="Lowest"))




library(ggplot2)


#####For Fresh Weight#####

qplot(factor(Garden), Fresh.wt, data =d , geom = "boxplot")##basic box plot in ggplot

p1 <- ggplot(data=d, aes(factor(Garden), Fresh.wt))
plot1=p1+geom_boxplot(aes(fill = factor(d$Origin)))+labs(x="Common Garden",y="Fresh weight in grams",fill="Origin")###Boxplot with ORIGIN as second factor


p <- ggplot(data=d, aes(factor(Garden), Fresh.wt))
p+geom_boxplot(aes(fill = factor(d$Population)))+labs(x="Common Garden",y="Fresh weight in grams",fill="Population")##with Population as a second factor



#######For Height#####

p2 <- ggplot(data=d, aes(factor(Garden), Height))###Boxplot with a second factor
plot2=p2+geom_boxplot(aes(fill = factor(d$Origin)))+labs(x="Common Garden",y="Height in cm",fill="Origin")


p <- ggplot(data=d, aes(factor(Garden), Height))
p3+geom_boxplot(aes(fill = factor(d$Population)))+labs(x="Common Garden",y="Height in cm",fill="Population")


####For Branch###

###Boxplot with a second factor as "Origin"
p3 <- ggplot(data=d, aes(factor(Garden), Branch.No))
plot3=p3+geom_boxplot(aes(fill = factor(d$Origin)))+labs(x="Common Garden",y="Number of primary branches",fill="Origin")


p <- ggplot(data=d, aes(factor(Garden), Branch.No))
p+geom_boxplot(aes(fill = factor(d$Population)))+labs(x="Common Garden",y="Number of primary branches",fill="Population")


##########
sqrt(d$No.of.Heads)


p4 <- ggplot(data=d, aes(factor(Garden), sqrt(d$No.of.Heads)))###Boxplot with a second factor
plot4=p4+geom_boxplot(aes(fill = factor(d$Origin)))+labs(x="Common Garden",y="Square root(Number of flower heads)",fill="Origin")


p <- ggplot(data=d, aes(factor(Garden), sqrt(d$No.of.Heads)))
p+geom_boxplot(aes(fill = factor(d$Population)))+labs(x="Common Garden",y="Fresh weight in grams",fill="Origin")labs(x="Common Garden",y="Square root(Number of flower heads)",fill="Origin")


####combining plots in a single page###
par(mfrow=c(2,2))
plot1+theme_set(theme_grey(base_size = 22)) 
plot2+theme_set(theme_grey(base_size = 22)) 
plot3+theme_set(theme_grey(base_size = 22)) 
plot4+theme_set(theme_grey(base_size = 22)) 




