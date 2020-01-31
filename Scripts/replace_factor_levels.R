# r script to change the levels of a factor

#create some data as an example
Number<-c(1,2,3,4,5)
Species<-c("Red maple", "RED MAPLE", "sugar maple", "white oak", "red maple")
DF<-data.frame(cbind(Number, Species))

#now make Species into a factor
DF$Species<-as.factor(DF$Species)
#and look at the levels
levels(DF$Species)

#there are too many versions of red maple.  How to fix?

#figure out which rows have red maple
Nums<-which(DF$Species =="RED MAPLE"|DF$Species=="red maple")

#now change those rows to "Red maple" so that all are the same
DF$Species[Nums]<-"Red maple"
#this worked; sometimes the levels aren't correctly recorded
levels(DF$Species)
#to fix so that levels display appropriately, use factor
DF$Species<-factor(DF$Species)
levels(DF$Species)
