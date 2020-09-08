#Regression Template


# Data Preprocessing Template
# Importing the dataset
dataset = read.csv('Position_Salaries.csv')
dataset = dataset[2:3]

# Splitting the dataset into the Training set and Test set
# We will NOT do this b/c of the small size of the dataset
# # install.packages('caTools')
# library(caTools)
# set.seed(123)
# split = sample.split(dataset$DependentVariable, SplitRatio = 0.8)
# training_set = subset(dataset, split == TRUE)
# test_set = subset(dataset, split == FALSE)

# Feature Scaling
# We will NOT need feature scaling

# Fitting Regression Model to the dataset
# Create your regressor here

# Predict a new result 
y_pred = predict(regressor, data.frame(Level = 6.5))

# Visualizing the Regression Model
ggplot() + 
  geom_point(aes(x = dataset$Level, y = dataset$Salary),
             colour = 'red') +
  geom_line(aes(x = dataset$Level, y = predict(regressor, newdata = dataset)),
            colour = 'blue') +
  ggtitle('Truth or Bluff (Regression Model)') + 
  xlab('Level') +
  ylab('Salary')

# Visualizing the Regression Model - for higher resolution and smoother curve
x_grid = seq(min(daataset$Level), max(dataset$Level), 0.1)
ggplot() + 
  geom_point(aes(x = dataset$Level, y = dataset$Salary),
             colour = 'red') +
  geom_line(aes(x = x_grid, y = predict(regressor, newdata = data.frame(Level = x_grid))),
            colour = 'blue') +
  ggtitle('Truth or Bluff (Regression Model)') + 
  xlab('Level') +
  ylab('Salary')




