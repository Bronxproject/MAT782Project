#This R file contains the second milestone for the project for MAT 782
library(readr)
Part121 <- read_csv("Part121.csv", skip = 4)
View(part121)
#The following Code will plot a scatterplot between the flight hours and total number of accidents
plot(part121$All ~ part121$`Flight Hours`, main="Correlation Between Flight Hours and Accidents", xlab="Flight Hours", ylab="Accidents")
#The following code will compute the correlation between Flight hours and accidents
cor(Part121$All,Part121$`Flight Hours`)
#The correlation is 0.5056792

#Now we comput the confidence interval for the mean
#the next code computes the mean for all accidents
accidentMean=mean(Part121$All)
accidentMean
#We get that the mean is 32.4375
#Now we compute the standard deviation
accidentsSD=sd(Part121$All)
accidentsSD
#We get 10.74916

#The confidence interval for this is
qnorm(0.95, mean=accidentMean, sd=accidentsSD)
#and we get 50.11829

#The code below will compute the confidence interval
t <- qt(0.975,32-1)
t
ErrorAmt=t*accidentsSD/sqrt(32)
ErrorAmt

#We get that the confidence interval is 32.44 +- 3.88

#the next code computes the mean for the fatalities
fatalitiesMean=mean(Part121$Total)
fatalitiesMean
fatalitiesSD=sd(Part121$Total)
fatalitiesSD
w=qt(0.975,32-1)
w
ErrorFatalities=w*fatalitiesSD/sqrt(32)
ErrorFatalities
#we get that the confidence interval is 96.53 +-55.11
