# Dice Project:
# Are my D&D dice trying to kill me? 

getwd()

# Install packages:
library(ggplot2)
library(dplyr)

#install.packages("ggplot2")



# Let us begin by making a balanced, random die. We will start with a normal D6 as used in
# damage rolls (e.g. 5th edition simple weapons)


# Make and object D6 and save it as a data frame for later analysis
DSix <- 1:6

DSix_Sample <- data.frame(sample(DSix, 50, replace = T))

ggplot(DSix_Sample, aes(x = ,1)) +
  geom_freqpoly(bins=6)

# This works, but I want to wrap it in a function:

DSixRoll <- function() {
  DSix <- 1:6
  Rolls <- as.data.frame(sample(DSix, size =100, replace = T))
  }

DSixRoll

colnames(DSix100)[colnames(DSix100) == 'DSixRoll()'] <- 'Number'


# Make a frequency table and plot the results

DSixFreq <- as.data.frame(DSix100 %>% count(Number))

as.numeric(DSixFreq)

plot(DSixFreq)

# Something seems wrong here. My samples do not seem random.
# I am more likely to roll a 1 or a 4 than I am a 3 or a 6.
# What if we increase the sample size:

rm(DSix100, DSixFreq)

DSixRoll <- function() {
  DSix <- 1:6
  Rolls <- as.data.frame(sample(DSix, size =2000, replace = T))
  return(Rolls)
}

Rolls
