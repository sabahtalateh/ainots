M <- cbind(mtcars, "Eco" = 0)
M[M$mpg > 20, "Eco"] <- 1

Model1 <- lm(Eco ~ wt + hp + cyl, M)
round(predict(Model1, M))
