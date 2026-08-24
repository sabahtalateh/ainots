cars <- mtcars

cars$mpg <- cars$mpg / max(abs(mtcars$mpg))
cars$cyl <- cars$cyl / max(abs(mtcars$cyl))
cars$disp <- cars$disp / max(abs(mtcars$disp))
cars$wt <- cars$wt / max(abs(mtcars$wt))
cars$hp <- cars$hp / max(abs(mtcars$hp))

library(neuralnet)
model1 <- neuralnet(mpg ~ ., cars, hidden = c(50, 30, 10))
p1 <- predict(model1, cars) * max(abs(mtcars$mpg))
mean(abs(mtcars$mpg - p1))
