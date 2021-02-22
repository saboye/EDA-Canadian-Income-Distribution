#####################  Explanatory Data analysis ###############################

# Loading the dataset to the working Environment 
prestige_df <- read.table("data/Prestige.txt")

#  the top of the dataset 
head(prestige_df)

#  the bottom of the dataset 
tail(prestige_df)

# Summary of the dataset 
summary(prestige_df)

# Plot the histogram of the Education 
hist(prestige_df$education,
     col='indianred', 
     main ="Education Distribution",
     xlab='Education')

# Plot the histogram of the Income
hist(prestige_df$income, col='skyblue',
     main ="Income Distribution")

# Correlation between education and income 
cor(prestige_df$education, prestige_df$income)

plot(prestige_df$education, prestige_df$income, 
     col='indianred',
     main="Education vs Income",
     xlab="Education",
     ylab="Income")


#linear regression model 
model <- lm(income ~ education, data = prestige_df)

plot(prestige_df$education, prestige_df$income, 
     col='indianred',
     main="Regression for Education per Income ",
     xlab="Education",
     ylab="Income")
abline(lm(income ~ education, data = prestige_df), col='blue')

# Summary of the model 
summary(model)

