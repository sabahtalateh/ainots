m <- mtcars
plot(mtcars)

res <- cor(mtcars$mpg, mtcars)[1, ]
sort(abs(res), decreasing = TRUE)

plot(mpg ~ wt, mtcars)
abline(lm(mpg ~ wt, mtcars), col = "red")

plot(mpg ~ hp, mtcars)
abline(lm(mpg ~ hp, mtcars), col = "red")

