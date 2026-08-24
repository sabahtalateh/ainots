model2 <- lm(mpg ~ wt, mtcars)
plot(mpg ~ wt, mtcars)
abline(model2, col = "red")

library(rpart)

model_tree <- rpart(mpg ~ ., mtcars)
plot(model_tree, margin = 0.15)
text(model_tree, use.n = TRUE, cex = 0.8)

