#function to test whether a package is installed

is.installed<-function(MyPackage){
     is.element(MyPackage, installed.packages()[,1])
}

#to use function, run is.installed("packagename") 