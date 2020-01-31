#######################
##### ANOVA SETUP
#######################

#R file to show basic setup for glm anova plus desired results
#plug in some sample data with two factors: dbh = tree diameters in two groups, chewed or unchewed, at two sites, 1 and 2
#gl generates a level gl(range of #s in level, #times to repeat, total number to generate)
treesize = data.frame (dbh = c(122, 128, 124, 112, 131, 89, 94, 99, 93, 91),
                       preference = gl(2, 5, 10, labels = c("unchewed", "chewed")),
                       site = gl(2, 1, 10))
treesize

#######################
#ONE WAY GLM
####################### model is specified by lm for linear model or glm for general linear model
# specify one-way model by glm
#get results table with anova call
Test = glm(response~factor1, data = dataframename)
summary(Test)
anova(Test)

######################
#ONE WAY LM
######################
Test = lm(response~factor1, data = dataframename)
summary(Test)
anova(Test)

######################
#TWO WAY GLM
#####################
#factor1+factor2 specifices to test the two factors but not their interaction.  factor1*factor2 would test the interaction
Test = glm(response~factor1+factor2, data = dataframename)
summary(Test)
anova(Test)

#####################
#TWO WAY LM
#####################

Test = lm(response~factor1+factor2, data = dataframename)
summary(Test)
anova(Test)


######################
#TWO WAY GLM WITH INTERACTION
#####################
#factor1+factor2 specifices to test the two factors but not their interaction.  factor1*factor2 would test the interaction
Test = glm(response~factor1*factor2, data = dataframename)
summary(Test)
anova(Test)

#####################
#TWO WAY LM WITH INTERACTION
#####################

Test = lm(response~factor1*factor2, data = dataframename)
summary(Test)
anova(Test)


######################
#Examples
######################
#one way anova by glm
MyTest = glm(dbh~preference, data = treesize)
anova(MyTest)
summary(MyTest)

#one way anova by lm

MyTest = lm(dbh~preference, data = treesize)
anova(MyTest)
summary(MyTest)

#two way anova by glm
MyTest = glm(dbh~preference+site, data = treesize)
summary(MyTest)
anova(MyTest)

#two way anova by lm
MyTest = lm(dbh~preference+site, data = treesize)
summary(MyTest)
anova(MyTest)

#two way anova WITH INTERACTION by glm
MyTest = glm(dbh~preference*site, data = treesize)
summary(MyTest)
anova(MyTest)

#two way anova WITH INTERACTION by lm
MyTest = lm(dbh~preference*site, data = treesize)
summary(MyTest)
anova(MyTest)
######################

