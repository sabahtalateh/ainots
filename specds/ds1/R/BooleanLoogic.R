TRUE && FALSE

a <- c(11, 22, 33)

a[(a > 15) & (a < 25)]

cars <- mtcars[(mtcars$wt < 5) & (mtcars$mpg > 30), ]
rownames(cars)
