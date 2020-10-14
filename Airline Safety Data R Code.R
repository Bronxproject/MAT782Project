#Aviation Project Data from NTSB and FiveThirtyEight

library(readr)
airline_safety <- read_csv("airline-safety.csv")
View(airline_safety)

#the following code will generate a bar graph for the incidents from 1985 to 1999
barplot(airline_safety$incidents_85_99, main="Incidents from 1985 to 1999", xlab="Airlines", ylab="Number of Incedents")

#The code below will plot a histogram of the fatal accidents from 1985 to 1999.
hist(airline_safety$fatal_accidents_85_99, main="Fatal Accidents from 1985 to 1999", xlab="Fatal Accidents by Airline", ylab = "Frequency of Accidents")

#The following code will plot a histogram detailing the fatalities from 1985 to 1999 by airline
hist(airline_safety$fatalities_85_99, main = "Fatalities by airline from 1985 to 1999", xlab = "Number of Fatalities", ylab = "Frequecy in terms of Airlines")

#The following code will generate the incidents from 2000 to 2014
barplot(airline_safety$incidents_00_14, main="Incidents from 2000 to 2014", xlab = "Airlines", ylab = "Numbe rof Incidents")

#The following code will display the mean average of fatalities from 1985 to 1999
mean(airline_safety$fatalities_85_99)
#The mean is 112.4107

#The following code will display the mean average of fatalities from 2000 to 2014
mean(airline_safety$fatalities_00_14)
#The mean is 55.51786

#The following Code will display the median average of the fatalities from 1985 to 1999.
median(airline_safety$fatalities_85_99)
#The median is 48.5

#The following Code will display the median average of the fatalities from 2000 to 2014
median(airline_safety$fatalities_00_14)
#The median is 0

#The following code will compute the variance of the fatalities from 1985 to 1999
var(airline_safety$fatalities_85_99)
#The variance is 21518.28

#The following code will compute the variance of the fatalities from 2000 to 2014
var(airline_safety$fatalities_00_14)
#The variance is 12394.98

#The following code will compute the standard deviation of the fatalities from 1985 to 1999
sd(airline_safety$fatalities_85_99)
#The standard deviation is 146.6911

#The following code will compute the standard deviation of the fatalities from 2000 to 2014
sd(airline_safety$fatalities_00_14)
#The standard deviation is 111.3328






