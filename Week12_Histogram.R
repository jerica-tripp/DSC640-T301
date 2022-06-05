# Histogram

library(ggplot2)

## Set the working directory 
setwd('C:/Users/jeric/OneDrive/Documents/classFiles/DSC640/Exercises/Week10_11')

## Load the data to a dataframe
df <- read.csv("education.csv")

Dropout <- df$dropout_rate
hist(Dropout,main="Distribution of States by Dropout Rate")