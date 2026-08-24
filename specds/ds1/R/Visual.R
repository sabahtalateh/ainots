plot(mtcars)
plot(mtcars$wt)
plot(mpg ~ wt, mtcars)
 
hist(mtcars$wt)

boxplot(mtcars$wt)
boxplot(wt ~ cyl, mtcars)

###
bp <- boxplot(mtcars$wt)

bp$out
boxplot(mtcars$wt)$out


### без выбросы
mtcars[
  !is.element(mtcars$wt, boxplot(mtcars$wt)$out) &
  !is.element(mtcars$hp, boxplot(mtcars$hp)$out)
  , 
]

mtcars[is.element(mtcars$hp, boxplot(mtcars$hp)$out), ]
