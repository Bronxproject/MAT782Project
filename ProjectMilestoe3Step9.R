View(Part121)

#The space between "flight hours" and "miles flown" kept giving errors so we rename the columns
names(Part121)[7]<-"FlightHours"
names(Part121)[8]<-"MilesFlown"

#The following code will compute the linear regressing model with the response variable "All" crashes and the predictor variables flight hours, miles flown, and departures

LMP4<-lm(All ~ FlightHours+MilesFlown+Departures, data=Part121)

#The y intercept is at -3.628e+01

#Teh code below plots a scatterplot of the accidents and the flight hours
plot(Part121$All, Part121$FlightHours)
plot(Part121$All, Part121$FlightHours, main = "Flight Hours vs All Accidents", Xlab="All Accidents", ylab = "Flight Hours")


#The code below computes the linear regression for All crashes and flight hours
LMP5<-lm(All~FlightHours, data=Part121)
abline(LMP5, col = "red")

#The code below will display the residuals for the linear model LMP4
resid(LMP4)

#The code below will display the residuals for the linear model LMP5
resid(LMP5)
#The code below will plot the residuals of the LMP4 model as a histogram
hist(resid(LMP4))
hist(resid(LMP4),main = "Histogram of Residuals for the LMP4 Model", xlab = "Residuals")
#The code below will plot the residuals of the LMP4 model as a histogram
hist(resid(LMP5))
hist(resid(LMP5),main = "Histogram of Residuals for the LMP4 Model", xlab = "Residuals")

#The following code will plot a scatterplot of the residuals of LMP4 model and the accidents
plot(Part121$All, resid(LMP4))
plot(Part121$All, resid(LMP4), main = "Residuals (LMP4) Vs All Accidents", xlab = "Accidents", ylab = "Residuals")
abline(h=0, col="red")

#The code below will display the summary of the LMP4 model
summary(LMP4)
summary(LMP4)$r.squared
#The code below will display the summary of the LMP5 model
Summary(LMP5)
summary(LMP5)$r.squared


