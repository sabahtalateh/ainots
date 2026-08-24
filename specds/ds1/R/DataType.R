# install.packages("neuralnet")
library(neuralnet)

model1 <- neuralnet(mpg ~ ., mtcars, hidden = c(30, 20, 15))
p1 <- predict(model1, mtcars)
mean(abs(mtcars$mpg - p1))
plot(model1)
