install.packages("deepnet")
library(deepnet)

mnist_orig <- load.mnist("/Users/ak/Code/ainots/specds/ds1/R/MNIST")
mnist <- load.mnist("/Users/ak/Code/ainots/specds/ds1/R/MNIST")
# show_digit(mnist$train$x[42, ])
# mnist$train$y[42]
# mnist$train$yy[42,]

n <- dbn.dnn.train(
  mnist$train$x,
  mnist$train$yy,
  hidden = c(20, 20, 20),
  numepochs = 10,
)

# bad prediction as data not normalized
result <- nn.predict(n, mnist$test$x)
result[1,]
round(result[1,], 2)



