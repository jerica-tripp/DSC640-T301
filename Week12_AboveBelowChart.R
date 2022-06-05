# Histogram

library(ggplot2)
library(dplyr)

## Set the working directory 
setwd('C:/Users/jeric/OneDrive/Documents/classFiles/DSC640/Exercises/Week10_11')

## Load the data to a dataframe
df <- read.csv("education.csv")

# Add Regional Average Field

df <- df %>% 
  group_by(Region) %>% 
  mutate(Regional_avg = mean(dropout_rate))

# Add Regional Avg Diff Field


df$Regional_avg_diff <- df$Regional_avg - df$dropout_rate

barplot(df$Regional_avg_diff, names.arg=c(df$state), las=2, main="State Dropout Rate Vs Regional Average" )