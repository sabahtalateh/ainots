Arr <- 1:10

for(i in Arr) {
  print(Arr[i])
}

for(i in (1:nrow(mtcars))) {
  print(rownames(mtcars)[i])
}

for(n in rownames(mtcars)) {
  print(n)
}

Models <- list(
  rpart(mpg ~ ., mtcars), 
  randomForest(mpg ~ ., mtcars)
)

for(M in Models) {
  predict(M, mtcars)
}

for(M in Models) {
  print(predict(M, mtcars[1, ]))
}
