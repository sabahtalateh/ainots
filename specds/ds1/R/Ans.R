mtcars$cyl == 4
A <- (1:32)[mtcars$cyl == 4]

mtcars$wt > 3
B <- (1:32)[mtcars$wt > 3]


#(1:3)[c(TRUE, FALSE, TRUE)]

C <- intersect(A, B)
mtcars[C, ]

###

segs <- 4
n <- nrow(mtcars)

seg_size <- n / segs

for (i in 1:segs) {
  seg_start <- (i-1)*seg_size+1
  seg_end <- seg_size*i
  cur <- seg_start:seg_end
  no_cur <- setdiff(1:n, cur)
  
  train <- mtcars[no_cur, ]
  test <- mtcars[cur, ]
  
  print(cur)
}
