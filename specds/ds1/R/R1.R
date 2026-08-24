M <- mtcars
M$mpg
M$disp[2]

M[2,]
M["Lotus Europa", ]
M["Lotus Europa", "hp"]
M[c("Lotus Europa", "Camaro Z28"),]
M[c("Lotus Europa", "Camaro Z28"), c("wt", "hp")]
M[c(1,2,3), c(3,4,5)]
