install.packages("deepnet")
library(deepnet)

show_digit <- function(arr784, col=gray(12:1/12), ...) {
  image(matrix(arr784, nrow=28)[,28:1], col=col, ...)
}

mnist <- load.mnist("/Users/ak/Code/ainots/specds/ds1/R/MNIST")

# normalize and train again
mnist$train$x <- mnist$train$x / 255
mnist$test$x <- mnist$test$x / 255

n <- dbn.dnn.train(
  mnist$train$x,
  mnist$train$yy,
  hidden = c(30, 30, 30, 30),
  numepochs = 20,
)

result <- nn.predict(n, mnist$test$x)

i <- 1254
show_digit(mnist$test$x[i, ])
mnist$test$yy[i, ]
round(result[i,], 3)

# порог верного ответа
thresh <- 0.7
correct <- 0
wrong <- c()
for (j in (1:mnist$test$n)) {
  lamps <- result[j, ]
  ans <- (0:9)[lamps > thresh]

  if (length(ans) != 1) {
    wrong <- c(wrong, j)
    next
  }

  if (ans == mnist$test$y[j]) {
    correct <- correct + 1
  } else {
    wrong <- c(wrong, j)
  }
}

print(correct/mnist$test$n) # 0.48
length(wrong)
wrong[1]

ans <- round(result[i,], 3)
(0:9)[ans >= thresh]



