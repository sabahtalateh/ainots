L1 <- list(1, 2, 3)
L2 <- list("Four", "V")

LL <- list(L1, L2)

L1[[2]]

###

library(randomForest)
library(rpart)

Model.rpart <- rpart(mpg ~ ., mtcars)
Model.RF <- randomForest(mpg ~ ., mtcars)

Models <- list(Model.rpart, Model.RF)

predict(Models[[1]], mtcars)
predict(Models[[2]], mtcars)
