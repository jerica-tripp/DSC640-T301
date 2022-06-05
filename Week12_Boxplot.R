
library(ggplot2)

## Set the working directory 
setwd('C:/Users/jeric/OneDrive/Documents/classFiles/DSC640/Exercises/Week10_11')

## Load the data to a dataframe
df <- read.csv("education.csv")

Dropout <- df$dropout_rate
boxplot(dropout_rate~Region,data=df, main="Distribution of States by Dropout Rate per Region",
   xlab="Region", ylab="Dropout Rate")
