##load packages after reinstalling R

#Borrowed code from https://stackoverflow.com/questions/9341635/check-for-installed-packages-before-running-install-packages


packages <- c("ggplot2", "tidyverse", "Hmisc", "lme4", "lubridate")
#list your packages

if (length(setdiff(packages, rownames(installed.packages()))) > 0) {
  install.packages(setdiff(packages, rownames(installed.packages())))  
}