library(ggplot2)   
library(dplyr)   

data(mtcars)

model <- lm(mpg ~ wt, data = mtcars)

summary(model)

predictions <- predict(model, newdata = mtcars)

ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, color = "blue") +
  labs(x = "Weight", y = "MPG")

coefficients <- coef(model)
intercept <- coefficients[1]
slope <- coefficients[2]

cat("Intercept:", intercept, "\n")
cat("Slope:", slope, "\n")
