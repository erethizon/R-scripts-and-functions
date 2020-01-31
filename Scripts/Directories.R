#looking at some code to work with files and directories


#determine which directory your R session is using as its current working dir
getwd()

#list all of the objects in your local workspace (i.e. the "Environment")
ls()

#list all the files in your working directory (2 methods)
list.files()
dir()

#create a directory in the current working directory
dir.create() #put name in quotes

#create a new file in the current working directory
file.create()

#check to see if a file exists using file.exists()
file.exists()

#obtain information about a file
file.info()

#change the name of a file
file.rename() #arguments are from name, to name

#copy a file from one name to another
file.copy() #from, to

#determine the relative path to a file
file.path()

#extract just the file extenstion from a file name
library(tools)
file_ext("nameoffile.csv")
#returns "csv"

#extract just the name from a file without the extension
library(tools)
file_path_sans_ext("filenameonly.csv")
#returns "filenameonly"






