# Multiple Linear Regression

# Importing the dataset
dataset = read.csv('50_Startups.csv')

# Encode the categorical data
dataset$State = factor(dataset$State,
                       levels = c('New York', 'California', 'Florida'),
                                  labels= c(1,2,3))

# Splitting the dataset into the Training set and Test set
library(caTools)
set.seed(123)
split = sample.split(dataset$Profit, SplitRatio = 0.8)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)


# training_set = scale(training_set)
# test_set = scale(test_set)