#database manipulation tips

#create a database
Val<-rnorm(10, 0,1)
MySpecies<-c(rep("Sugar maple", 3), rep("Red maple", 4), rep("White pine", 3))
MyDBH<-rnorm(10, 35, 4)
MyStatus<-c(rep("alive", 4), "dead", "alive", "dead", "Dead", "Alive", "DEAD")
MyID<-rep(1:10)
DF<-data.frame(cbind(MyID, MySpecies, MyDBH, MyStatus))


#remove rows from the database
Dump<-which(DF$MySpecies== "White pine") #selects the row #s for trees that are white pines
NewDF<-DF[-c(Dump),]
#specifies to save a new DF (you could also just write over the DF you have) and remove
#those rows that are White pines.

#combine data from two vectors
Nums<-c(3, 5, 7, 9)
Breeds<-c("Lab", "Mutt", "Husky", "Dalmatian")
NumBreeds<-c(Nums, Breeds)
