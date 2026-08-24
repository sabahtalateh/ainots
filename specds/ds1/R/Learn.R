M <- mtcars

model1 <- lm(mpg ~ wt, M)
# (Intercept)  wt  
# 37.285       -5.344
# mpg = -5.344 * wt + 37.285

-5.344 * M["Dodge Challenger", "wt"] + 37.285
M["Dodge Challenger", "mpg"]

p1 <- predict(model1, M)

model2 <- lm(mpg ~ wt + hp + cyl, M)
p2 <- predict(model2, M)

library(rpart)
model3 <- rpart(mpg ~ wt + hp, M)
p3 <- predict(model3, M)
p3

e1 <- mean(abs(M$mpg - p1)) # Mean ABS Error
e2 <- mean(abs(M$mpg - p2))
e3 <- mean(abs(M$mpg - p3))

Result <- data.frame(M$mpg, p1, p2, p3)
ee <- c(e1, e2, e3)

