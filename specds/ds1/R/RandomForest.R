# install.packages("randomForest")
library(randomForest)

Model.rpart <- rpart(mpg ~ ., mtcars)
# mpg ~ все остальные колонки (.)
Model.RF <- randomForest(mpg ~ ., mtcars)

p1 <- predict(Model.rpart, mtcars)
p2 <- predict(Model.RF, mtcars)
res <- data.frame(mtcars$mpg, p1, p2)

mean(abs(mtcars$mpg - p1)) # средняя ошибка, rpart
mean(abs(mtcars$mpg - p2)) # средняя ошибка, random forest
