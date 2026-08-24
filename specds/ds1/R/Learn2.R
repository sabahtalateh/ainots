hist(rnorm(10000))

a <- c(3,11,6,5,1,22)
order(a)
a[order(a)]

####

n <- nrow(mtcars)
ii <- order(rnorm(n))

train <- mtcars[1:20,]
test <- mtcars[21:nrow(mtcars),]

m1 <- lm(mpg ~ wt, train)
p1 <- predict(m1, test)
e1 <- mean(abs(test$mpg - p1))

m2 <- lm(mpg ~ wt + hp + cyl, train)
p2 <- predict(m2, test)
e2 <- mean(abs(test$mpg - p2))

m3 <- rpart(mpg ~ wt + hp, train)
p3 <- predict(m3, test)
e3 <- mean(abs(test$mpg - p3))

ee <- c(e1, e2, e3)

