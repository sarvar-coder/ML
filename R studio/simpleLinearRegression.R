# Simple Linear regression 

# Importing the dataset
dataset = read.csv('Salary_Data.csv')

# Splitting the dataset into the Training set and Test set
# install.packages('caTools')

library(caTools)

set.seed(123)

split = sample.split(dataset$Salary, SplitRatio = 2/3)

training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

# Fitting Simple linear regression to the training set 

regressor = lm(formula = Salary ~ YearsExperience,
               data = training_set
)

# Predecting values 
y_pred = predict(regressor, newdata = test_set)

# Visualazing the training set results 
# install.packages("ggplot2")
library(ggplot2)
ggplot() + 
  geom_point(aes(x = training_set$YearsExperience, y = training_set$Salary), 
             color = 'red'
  ) + 
  geom_line(aes(x = training_set$YearsExperience, y = predict(regressor, newData = training_set)),
            color = 'blue'
  ) + 
  ggtitle('Salary vs Experience (Training Set)') + 
  xlab('Years Experience') +
  ylab('Salary')

# Visualazing the Test set results 
# install.packages("ggplot2")
library(ggplot2)
ggplot() + 
  geom_point(aes(x = test_set$YearsExperience, y = test_set$Salary), 
             color = 'red'
  ) + 
  geom_line(aes(x = training_set$YearsExperience, y = predict(regressor, newData = training_set)),
            color = 'blue'
  ) + 
  ggtitle('Salary vs Experience (Test Set)') + 
  xlab('Years Experience') +
  ylab('Salary')



