#Standard Error of the Mean and plotting Error bars


sumCover<-Cover %>% group_by(Forest, CovType) %>%
	summarise(
		meanCover = mean(Percent),
		seCover = sd(Percent)/sqrt(sum(!is.na(Percent)))
	)

#note: sqrt(n()) will give erroneus info if there are NA's (will
#count the rows anyway).  To solve, could use sd(gain)/sqrt(sum(!is.na(gain)))

#now we can add points, lines and error bars to our figures.

ggplot(sumCover, aes(x=CovType, y = meanCover,
				 color = Forest, group = Forest))+
	geom_point()+
	geom_line()+
	geom_errorbar(aes(ymin= meanCover - seCover,
				   ymax = meanCover+seCover), width = 0.1)+
	ylab("Mean percent cover")+
	theme_bw() #nice plot!