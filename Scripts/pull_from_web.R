#try pulling data from the following table on this webpage
#http://www.pnas.org/content/suppl/2003/03/04/0436428100.DC1/6428Table1.html
#

#use package XML
#then read the file
raw_met_data<-readHTMLTable('http://www.pnas.org/content/suppl/2003/03/04/0436428100.DC1/6428Table1.html')
met_data<- data.frame(raw_met_data)
met_data
#above worked fine, but since the html table was badly structured (some merged cells)the result needs some cleaning
#is there a better way?

#try this
#build the url
url<-paste("http://www.pnas.org/content/suppl/2003/03/04/0436428100.DC1/6428Table1.html")
#read the tables and select the one with the most rows
tables <-readHTMLTable(url)
tables
n.rows<-unlist(lapply(tables, function(t) dim(t) [1]))
n.rows
tables[[which.max(n.rows)]]
tables
