###tweaking ggplots

library(ggplot2)


#Start with some data:
Year<-c(2008, 2013, 2018)
TotalPapers<-c(56, 54, 44)
NumNA<-c(23, 4, 8)
NumNo<-c(29, 16, 7)
NumYes<-c(4, 34, 29)
SumDF<-as.data.frame(cbind(Year, TotalPapers, NumNA, NumNo, NumYes))
SumDF$PerNA<-(SumDF$NumNA/SumDF$TotalPapers)*100
SumDF$PerNo<-(SumDF$NumNo/(SumDF$NumNo+SumDF$NumYes))*100
SumDF$PerYes<-(SumDF$NumYes/(SumDF$NumNo+SumDF$NumYes))*100


#now plot
ggplot(SumDF, aes(Year, PerYes))+
	geom_point()+
	geom_line()

#change axis limits
ggplot(SumDF, aes(Year, PerYes))+
	geom_point()+


